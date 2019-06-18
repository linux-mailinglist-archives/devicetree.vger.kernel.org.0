Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83B2749ACB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726543AbfFRHlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:41:53 -0400
Received: from mail-wr1-f100.google.com ([209.85.221.100]:37370 "EHLO
        mail-wr1-f100.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725913AbfFRHlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 03:41:53 -0400
Received: by mail-wr1-f100.google.com with SMTP id v14so12757908wrr.4
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 00:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=okoko.fi; s=okoko;
        h=from:to:cc:subject:date:message-id;
        bh=TcaLpkr7BrB6h5k/fFe5VxsiPI+n9NLSNDwWnvmzuGA=;
        b=f00Dh/O46hmUfacv++d2NLddEDx10ZY8ZiTRN4baj57YhzsMxlrzWtI3dBq00FvxP3
         v7vxxqBoSCmY3KE3mJhBfQTNl9JiYsZ5CCo4Mmg0R6+uQ8pekPTaXBvMRzarzV01JC6R
         PpaoUu81imcci5U35+0rUahFy84wYPR+lYSOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TcaLpkr7BrB6h5k/fFe5VxsiPI+n9NLSNDwWnvmzuGA=;
        b=NJ82leHoMx9p1gpDGXNm5HHrR/T3RqUeiu8V4nhViO5ik/Yvzb77i0ZWFLy/cWNuuW
         nLFm78TyxX6AMERfSpRtK3Kyn0itpVDA5PFRzgOzo979zAeeip5xx+MGCrdc6MKbxKhh
         6+HdZ6rorckV0l651J8kVOQrPaqcvjNSE/TMswd70xgDEQwGevfQDhwjuV4BTOWor9pC
         2mY/PeW36vHmAFFM45OucMhqeUn2mkkqysCGeLegrPZFvctvWHYz5wvUAeqQ5Bj44XqE
         8lvpXBbhFv/HQEwcJ7YVfH0iYvy3MSj6bFHCvKTH88eI6lbhz0YfZt1Bnn6WOddkhE9x
         MTjw==
X-Gm-Message-State: APjAAAWvgkteTbJy8ZAF4SMCIEP01Wg75HcanuUYy0z/+LaNRktOmKGr
        +U/IXUFvlJdmNSDLX4wYzw5goRqy1NyTe4kazJVn8zn8/UYTLQ==
X-Google-Smtp-Source: APXvYqzow8GoPJC+En04+NCBYrUu0w+fEr5jV/VXyg8XMEXtqBhw1OEsNThbpc9r0JizrrVw2kts9Y2dzEZ6
X-Received: by 2002:a5d:5607:: with SMTP id l7mr50973455wrv.228.1560843710723;
        Tue, 18 Jun 2019 00:41:50 -0700 (PDT)
Received: from localhost.localdomain (46-163-209-30.blcnet.fi. [46.163.209.30])
        by smtp-relay.gmail.com with ESMTPS id l18sm212063wrn.66.2019.06.18.00.41.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 00:41:50 -0700 (PDT)
X-Relaying-Domain: okoko.fi
From:   Marko Kohtala <marko.kohtala@okoko.fi>
To:     linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Cc:     Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        =?UTF-8?q?Michal=20Vok=C3=A1=C4=8D?= <michal.vokac@ysoft.com>,
        Marko Kohtala <marko.kohtala@okoko.fi>
Subject: [PATCH 0/6] video: ssd1307fb: Support more displays
Date:   Tue, 18 Jun 2019 10:41:05 +0300
Message-Id: <20190618074111.9309-1-marko.kohtala@okoko.fi>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The kernel driver for ssd1307fb did not allow for all proper
initialization for a Densitron 128x36 display. The trend in the driver
has been to add devicetree properties for the controller initialization
and these patches continue on that trend.

There also were some sparse and Coccinelle errors.

A small bug causing scrolling on display updates with nonzero page_offset
was a bit surprising. It would seem the driver has only been used with
page_offset set to zero. Bug has been there since commit
301bc0675b677a98475187050d56cd2b39ff0acf ("video: ssd1307fb: Make use of
horizontal addressing mode").

Marko Kohtala (6):
  video: ssd1307fb: Use screen_buffer instead of screen_base
  video: ssd1307fb: Remove unneeded semicolons
  video: ssd1307fb: Start page range at page_offset
  video: ssd1307fb: Handle width and height that are not multiple of 8
  dt-bindings: display: ssd1307fb: Add initialization properties
  video: ssd1307fb: Add devicetree configuration of display setup

 .../devicetree/bindings/display/ssd1307fb.txt |  10 ++
 drivers/video/fbdev/ssd1307fb.c               | 130 ++++++++++++------
 2 files changed, 101 insertions(+), 39 deletions(-)

-- 
2.17.1

