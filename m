Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAE439F704
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 01:42:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726315AbfH0Xmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 19:42:51 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:46234 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbfH0Xmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 19:42:51 -0400
Received: by mail-pf1-f195.google.com with SMTP id q139so384950pfc.13
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 16:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=zZhupswYJRpQl2nx+3EaAYIvNYHJJK6zS8VHQ2dEq0o=;
        b=aKIPYGdpDtpWjheRueo74FyiXWqdB3rxs9dqEadj9ooeD9wrrjQUXhGqf+pBNgzwRs
         +33Q0tKEOxQcQaIciDay3urxoZZ0LUm7TFkRiRAfERG+2rR1MEoMiyHVb8u+F2qFfgQB
         ERRMV4s4gpt7SyF4cI8pR7aT7vac+5uZ1BJMQMhrrJv1u6anWjbKOGJQtr6zZax0bQCT
         t/m5nv4XRPE05BHeGPgr/pNsl5TncA9GfVE1gIMiW93thDK0UYplitY5eIwCYxE3T39U
         4mv5Uooq96x961Ewdmqr1eo+72Znz4u1POBNBzJitLjUY6f8h+Mqy5JTAhNblnz3/sMC
         NZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=zZhupswYJRpQl2nx+3EaAYIvNYHJJK6zS8VHQ2dEq0o=;
        b=SJsedKLnKTjV1rNNU5KkU/J2OVVEE7NFNnRkj9hgEwWz18dJ+CiPUICeBC+oPrzJ7Z
         wrKTlpCkgQltF2l0AyM4OsCuVksBpT9QG+MUwYwnTFnxb6tL6dO9s4GRXpckbRgk8Jd7
         fTTBpXapbBu/awHHK0zgfsjGLSGUiBvkywpoNoF2xHW7f/pk6/kuU24/l4Pb2c9uFDVV
         G6O/dFbVGjgPkEAgrfg2TiC2AsqULPbAGuQLF+7y1XGTANi8dy3hAeIrDcBtQ/keyjhC
         KLEGmOR/yIo89LbFw3mAncEKHsX0gminK/9KG/IOmSHHHfi/dpPgWtWj6K3RWm0mEZyF
         PaEA==
X-Gm-Message-State: APjAAAVmE1Yu2czeAqqP1BgigGK+drKvIoL5Xd404NPYXQsJvBtVXzaD
        VEK0qds3LW2Y5kuggf8ZFNt+Dohh/KA=
X-Google-Smtp-Source: APXvYqwXfzwRgynraPWYmZHmZ4nqfdc0jVUarkPtMHItZPdLhXyQy/n60WaWTA3gyehqjYkOkVqSTw==
X-Received: by 2002:a17:90a:1a8d:: with SMTP id p13mr1342730pjp.15.1566949370220;
        Tue, 27 Aug 2019 16:42:50 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
        by smtp.gmail.com with ESMTPSA id h195sm468857pfe.20.2019.08.27.16.42.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Aug 2019 16:42:49 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: g12a: add tdm resets
In-Reply-To: <20190820121551.18398-1-jbrunet@baylibre.com>
References: <20190820121551.18398-1-jbrunet@baylibre.com>
Date:   Tue, 27 Aug 2019 16:42:49 -0700
Message-ID: <7hh862tbt2.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> This patchset adds the dedicated reset of the tdm formatters which
> have been added on the g12a SoC family. Using these help with the channel
> mapping when the formatter uses more than 1 i2s lane.

Because I forgot^W waited on this, we did the meson-g12a-common split,
so this no longer applies cleanly.  Could you rebase this on current v5.4/dt64
and I'll queue it for v5.4/dt64.

> Kevin, please note that to build, this patchset depends on the new reset
> bindings of the audio clock controller. I've prepared a tag for you [0]
>
> [0]: git://github.com/BayLibre/clk-meson.git - clk-meson-dt-v5.4-2

Thanks for the tag.  This is now included in v5.4/dt64.

Kevin

