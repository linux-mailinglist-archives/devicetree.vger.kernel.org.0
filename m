Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E72C030532F
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 07:29:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbhA0G3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 01:29:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231290AbhA0F5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 00:57:37 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F26C0613D6
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 21:56:56 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id u11so421491plg.13
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 21:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8HKDWEK8ExtdlsWay8OKrUEYUHkQ//vQexSJoiYU8YA=;
        b=TdPXHZ/2TpAVy+Zpq+FEn20zDnMqtnQqBjajkkFTID7dqzGPBe1HALdSl/quNqhSCV
         N0YCwRkxd4csKhF7xwn1nCcyysyPak9Y/+TeMtyjOjfYZ/Tax0u2q/dgc6EIMH344NmI
         UwQ8+pxzXZ/CT4WQiAiRRLI1HSeYG+xeQXVQL6su1SezSvgcMpu9l5cLF50wS/jBQ4cA
         sKVV3GqYGXBisP5FR7xgBj/EnNLqiqpQsy/Zkorq32exlBvcjSqCzCarJrxEx0/naYNT
         Mmy05Y+fQrlVjixWUsJjf978HFNMskWOJaHWscLBovB28rA6MTw2u7Sp4cfNQwqJyLmq
         U3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8HKDWEK8ExtdlsWay8OKrUEYUHkQ//vQexSJoiYU8YA=;
        b=IINNdlr1hO8dp9y9wi4cOBSSK9uWpBIxfxO5LCx996EvRHOAIS5u25NkylGinaXPr2
         18S+9crSjJDRqvTVdtEC0gM8upoNxXI5eRZDtGnZVxarkibjdfhrMXocvF2NG9XHEzOh
         rimRdwbJFZEyVbmFNXPubjAqCjxEKBWdD/+wSJRIwa6S2t9jV74ZwtFB7TyfJycAkezo
         oXGnBxn3psyNc1jUe86Be2Cpuaalm3BvLyp4iWgzzsJ+MoWbleqjiGGAVHqjYIplscdi
         5lAgRhQk0ncYlaXFuDWSXgrXjgg3qf8pwnWHwTNSYba4thWtSJjHQP3hfc4sdlxuMMZa
         32hg==
X-Gm-Message-State: AOAM533zFiGn3xfQGIyODz0DnvfXSUo8hbSHEn+D2mySYNXtnXt/iUlh
        8LZnvXgn5fn2lHWxPZ3VHEs5Vw==
X-Google-Smtp-Source: ABdhPJy8P4ltSydkIMUgoyE3IDr6/VeynofXBe1hmxUjJKVNEl1WYOljbwatwuTJt/Vrm+SuChvw6Q==
X-Received: by 2002:a17:902:e80c:b029:de:a20b:7a9c with SMTP id u12-20020a170902e80cb02900dea20b7a9cmr10005280plg.12.1611727016001;
        Tue, 26 Jan 2021 21:56:56 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id a25sm860040pgv.40.2021.01.26.21.56.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 21:56:54 -0800 (PST)
Date:   Wed, 27 Jan 2021 11:26:52 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
        Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH V6 5/6] of: unittest: Create overlay_common.dtsi and
 testcases_common.dtsi
Message-ID: <20210127055652.vmkx5sczef2mjwey@vireshk-i7>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
 <94180731aa4a17e4834458a979de7de782dc73d4.1611312122.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <94180731aa4a17e4834458a979de7de782dc73d4.1611312122.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-01-21, 16:20, Viresh Kumar wrote:
> In order to build-test the same unit-test files using fdtoverlay tool,
> move the device nodes from the existing overlay_base.dts and
> testcases_common.dts files to .dtsi files. The .dts files now include
> the new .dtsi files, resulting in exactly the same behavior as earlier.
> 
> The .dtsi files can now be reused for compile time tests using
> fdtoverlay (will be done in a later patch).
> 
> This is required because the base files passed to fdtoverlay tool
> shouldn't be overlays themselves (i.e. shouldn't have the /plugin/;
> tag).
> 
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  drivers/of/unittest-data/overlay_base.dts     | 90 +-----------------
>  drivers/of/unittest-data/overlay_common.dtsi  | 91 +++++++++++++++++++
>  drivers/of/unittest-data/testcases.dts        | 17 +---
>  .../of/unittest-data/testcases_common.dtsi    | 18 ++++
>  4 files changed, 111 insertions(+), 105 deletions(-)
>  create mode 100644 drivers/of/unittest-data/overlay_common.dtsi
>  create mode 100644 drivers/of/unittest-data/testcases_common.dtsi

Frank,

As I mentioned in the cover-letter, I get a build warning right now:

drivers/of/unittest-data/tests-interrupts.dtsi:20.5-28: Warning (interrupts_property): /testcase-data/testcase-device2:#interrupt-cells: size is (4), expected multiple of 8

I think I need to add below diff to this patch to fix this warning, will that
be okay ?

diff --git a/drivers/of/unittest-data/testcases.dts b/drivers/of/unittest-data/testcases.dts
index 185125085784..04b9e7bb30d9 100644
--- a/drivers/of/unittest-data/testcases.dts
+++ b/drivers/of/unittest-data/testcases.dts
@@ -3,3 +3,14 @@
 /plugin/;
 
 #include "testcases_common.dtsi"
+
+/ {
+       testcase-data {
+               testcase-device2 {
+                       compatible = "testcase-device";
+                       interrupt-parent = <&test_intc2>;
+                       interrupts = <1>; /* invalid specifier - too short */
+               };
+       };
+
+};
diff --git a/drivers/of/unittest-data/tests-interrupts.dtsi b/drivers/of/unittest-data/tests-interrupts.dtsi
index ec175e800725..0e5914611107 100644
--- a/drivers/of/unittest-data/tests-interrupts.dtsi
+++ b/drivers/of/unittest-data/tests-interrupts.dtsi
@@ -61,12 +61,5 @@ testcase-device1 {
                        interrupt-parent = <&test_intc0>;
                        interrupts = <1>;
                };
-
-               testcase-device2 {
-                       compatible = "testcase-device";
-                       interrupt-parent = <&test_intc2>;
-                       interrupts = <1>; /* invalid specifier - too short */
-               };
        };
-
 };

-- 
viresh
