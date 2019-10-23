Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C441E101F
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 04:41:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389143AbfJWClO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Oct 2019 22:41:14 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:39691 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388827AbfJWClO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Oct 2019 22:41:14 -0400
Received: by mail-pg1-f195.google.com with SMTP id p12so11188632pgn.6
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2019 19:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67e1Q0MOW3JpeTjPpBwrGL7Br8C/8KI2Kwh1vAn3ymg=;
        b=iU2oyWeXXlCDX5qFs3nFJrMsiKp4OWnDWapu3NEeIHQCI3wOOyoQ1E4HhciKoLO3Gf
         RHahVLm3qvxgaVRWkXgLWFM9sNdlSF9SDtpi5mZXHGc6RRTsXMwkojC+XOjcNQiO71hd
         U4pRNr3XkLY3OqdDVmwFaYiKNXZT9bzVU3ZrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67e1Q0MOW3JpeTjPpBwrGL7Br8C/8KI2Kwh1vAn3ymg=;
        b=KLKiPBVVfkD+qTQjNMqKV+8fPPqGkOHy3DrRaknzuND58uYI3vV4mWr/93bg5QW7D2
         Fxx12q1HsGNh3caFMkX4EGKA6C4dsLaBLO1Hqvvn+XCX794OxrumJpqGVT4GlGLA0DIP
         gV6rvHSeWKafrJTsQu8ja8VTVeVjOIBScmwbvTB3TZV0DpD6Fn3P1PaaMVbm59e8eaB5
         FyCCRUjvusRAi335wr/ADBD4cAvm4Hn3shYm9Og+Ve20tYcJbsA/ldbyB3zqu+IHwsX0
         lNk41Mffyl2ty94d8VzUnK+XCe+TnFxx6q4jixEtWxYtqRc4ZJhSIFsw8Toz6FQQGw3z
         hAfg==
X-Gm-Message-State: APjAAAX5fHMD78YprPyxDR9iAOI+5aiTQw/mNZax7SF6TgBhJMhp6JKj
        Sh8cYt34a54K0dqcgn0uOmQ66w==
X-Google-Smtp-Source: APXvYqwXnfEK8HCYKm0YIv9h0z8cNUUeG188FZOP6II9/7y0akJFVN1LoQsVcDAkgDFgnzevGkW2Qw==
X-Received: by 2002:a17:90a:1b2a:: with SMTP id q39mr8559698pjq.119.1571798473820;
        Tue, 22 Oct 2019 19:41:13 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:254e:2b40:ef8:ee17])
        by smtp.gmail.com with ESMTPSA id 139sm4073338pfb.78.2019.10.22.19.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 19:41:13 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     linux-input@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        linux-kernel@vger.kernel.org,
        Nicolas Boitchat <drinkcat@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>
Subject: [PATCH v3 0/2] HID: google: add device tree bindings for
Date:   Wed, 23 Oct 2019 10:41:03 +0800
Message-Id: <20191023024103.225771-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT bindings for Whiskers swich device and its documentation.

v3: dt bindings description changed
v2: dropped a patch not relevant to DT bindings

Ikjoon Jang (2):
  dt-bindings: input: Add DT bindings for Whiskers switch
  HID: google: Add of_match table to Whiskers switch device.

 .../devicetree/bindings/input/cros-cbas.yaml  | 22 +++++++++++++++++++
 drivers/hid/hid-google-hammer.c               | 10 +++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/cros-cbas.yaml

-- 
2.23.0.866.gb869b98d4c-goog

