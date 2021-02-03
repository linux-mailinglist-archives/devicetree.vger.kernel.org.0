Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3365330E33D
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 20:29:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230104AbhBCT15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 14:27:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbhBCT1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 14:27:50 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE1BC0613ED
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 11:27:09 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id z9so277564pjl.5
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 11:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bNbGmsRK7EtE+A+C+li0gY11J+UApuCknxlivtVnoCQ=;
        b=DWjb2bFxqmNAW/BlPcyRIq10tLyWin+KVH+audN+gSu1lquwWUwEWTEYYFO4Ajfl8+
         PLIed1ut3mA3JKPJh3T/xt4N8+olbCwku/bPb+hB1bczhc+8P+a87iwzvwM1lng+6dmi
         Cqgd8077QetOKepECmzQw9y0O1+q3TmjGes49HJ3Q6n/rkMJNvaKPl8QbQmQFsq/kP7A
         cueKGTRD7xwLRRmTNg7XZcEIBfk9rHsId5gDN/3f5JkgiEzdXnGU8Rd48HeF+3GLo236
         +HB6Vn5rFaV4Uh2PcpEyHB0yD8FP9fWIVb/yJfdAy16bXdsgsYlurViEcrjnGEpYwDtM
         1x7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bNbGmsRK7EtE+A+C+li0gY11J+UApuCknxlivtVnoCQ=;
        b=L+iN+1s+gC2336DREmlhbQvcdeMRc5EbqcUo74GnJlwJBlzLpX3twg+WTIT2vN6jqf
         IKyHGY1I33DX8SQzZ1VuMbbKwvKTZnq7d5EoDWzDGZUp2YcQXdO5W/qjCBJEzONFuVMg
         CnpnwRSmvzq97Wj96riTODByVw7WvgRP15kGOj4WvIi5d1jhO4IMRwW5NUQaSHRVtqf7
         y6dfeqmuq8lJWBr7u/Xy1sd8SzjJ4C7Kemf4s/sSLcZLpN9feFJA2nqb8xk5YZ7CEIwp
         lrcLaobEg+72d1HtIyj5aC1jQJeMtlR0xoAcPGDxldqSYYoR7NYasoLdSwJ4AZundXpy
         fHBA==
X-Gm-Message-State: AOAM530wtwYYH6ASOBIM71s9UPNzSV3T16vB8LvsH5S9sLhfyRP7zUrc
        flyMpe1lcnPn/8CGAj2YyFOZtg==
X-Google-Smtp-Source: ABdhPJyCCy5Wn7Tedwh+xmpYfLj3gtMpYExYZcNb6JG6B51UNpF2Nvs/mNWe7tpbl5nRFMr5MskuYw==
X-Received: by 2002:a17:90a:f0c1:: with SMTP id fa1mr4549473pjb.3.1612380429127;
        Wed, 03 Feb 2021 11:27:09 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id o14sm3865549pgr.44.2021.02.03.11.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 11:27:08 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Dongjin Kim <tobetter@gmail.com>
Subject: Re: [PATCH v3 0/5] arm64: dts: meson: add support for ODROID-HC4
Date:   Wed,  3 Feb 2021 11:27:07 -0800
Message-Id: <161238042310.26843.1778876341665074972.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202021021.11068-1-christianshewitt@gmail.com>
References: <20210202021021.11068-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 Feb 2021 02:10:16 +0000, Christian Hewitt wrote:
> This series fixes minor sort-order issues in the Amlogic bindings yaml and
> dtb Makefile, then converts the existing ODROID-C4 dts into dtsi so we can
> support its new sister product the ODROID-HC4.
> 
> I've also given the devices different audio card names. This is partly
> cosmetic, but also because HC4 is HDMI-only while C4 can be used with
> other i2c audio devices via an expansion connector so users may want to
> use different alsa configs.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: arm: amlogic: sort SM1 bindings
      commit: ad6d08d9e909be81c135355716590304e99543b7
[2/5] arm64: dts: meson: sort Amlogic dtb Makefile
      commit: fd88408951aef8c3e6e6a1dd2f0acf47b45182a2
[3/5] arm64: dts: meson: convert meson-sm1-odroid-c4 to dtsi
      commit: e329e6681d55e2ab9b3d033f3ee38f09e96f2f9c
[4/5] dt-bindings: arm: amlogic: add ODROID-HC4 bindings
      commit: 1429c7d223ed436f54e1c30efa7f87eb15d50b31
[5/5] arm64: dts: meson: add initial device-tree for ODROID-HC4
      commit: 9be09db3e2adf5843ec1e20771c598e70d2bd34a

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
