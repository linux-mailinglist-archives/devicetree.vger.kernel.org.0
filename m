Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F91B527DF2
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 08:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233126AbiEPG5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 02:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237664AbiEPG5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 02:57:37 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E450B1D
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 23:57:36 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u23so24115272lfc.1
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 23:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y8Vesh/AmVxnxCJXnP8z5e4vW7ZUtRIGODEmp5Y/tbk=;
        b=j+ewMwyt9KnUxhaGO1rvjPKYvlgUgV6AeNdbrnBaLqnjcyVqfDu0GUypwCPnLmUfsD
         zkSoH1jYNVPSOPe6eUhcqRbhEsMZ88DMjXd1LSyUzvyKITTJOttCYw6H46grPm+ZQs1V
         zAlj3dBeuBFWcEdjQaOuo88H5SBZTQSj88DGW7SQZ8PGT5jngSUxmB/lwp5omgxLiVVx
         q0dNoWkQjhnCpiEHtSeEeusdVspm1Ptuv1kGMMPgfegiMI+qAQXue5ZcKPTvOkqREFj5
         cnY+35Wbd6y9tZVAFOlWByU9Furgbn2sWkZeFqwr3dvr6Ar2tHveng6vOdMURVG2hOw4
         h+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y8Vesh/AmVxnxCJXnP8z5e4vW7ZUtRIGODEmp5Y/tbk=;
        b=a1Nvp7AVgOkdYVcJD+c8o1dcW2upVVSTow8O3rQ2aVTX9Ja/rEcOfhPAgwsrkGAFUh
         Xzh5u0nUSqdnjlmEX6aYoE0ON8nkdSGlTpcPzmej5Y5Jvlxua3yvE+vH8nkxnQ1a+8cZ
         hGSKJTnP1cEVmxS7Kbcfc/1fOC9mkEwzmB87AsgqzkpuOSQqqH3oZmLrAQxINTKE9ByQ
         U7knOZwn+ydFfrulamnXiznP0owLBqrqh8ID4aOgDYIRdziNKaWI6AKioJazInM6S1C1
         RCOM+L1RhIdo73hsYYVkUKItLZ7qMR1h8uwvINFQ0rZ5yPq8ydpPOcD5kbgU3F0opi5V
         RA1Q==
X-Gm-Message-State: AOAM5323BGQbzAyGEJOuUgOm01NkYH/kwxlvD2pCqE2XHZQMdq+vHRez
        NdYmFQ0ie9ZPIqVZ17Zkg+wtEg==
X-Google-Smtp-Source: ABdhPJynSi/6C1PC63okLI4+titLAFaZWYwfsXSIet5E4k6/frGVrPt/Dk4pS0A7DbvLwuzW7eXvLw==
X-Received: by 2002:a05:6512:2090:b0:472:2764:1f0c with SMTP id t16-20020a056512209000b0047227641f0cmr12585920lfr.482.1652684254591;
        Sun, 15 May 2022 23:57:34 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r8-20020ac252a8000000b0047415cd1ec3sm1217283lfm.165.2022.05.15.23.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 May 2022 23:57:34 -0700 (PDT)
Message-ID: <d5438d2e-f387-170a-cea1-d5936cc8e15a@linaro.org>
Date:   Mon, 16 May 2022 08:57:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/4] dt-bindings: Document how Chromebooks with
 depthcharge boot
Content-Language: en-US
To:     Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 18:59, Douglas Anderson wrote:
> This documents how many Chromebooks pick the device tree that will be
> passed to the OS and can help understand the revisions / skus listed
> as the top-level "compatible" in many Chromebooks.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v2:
> - ("Document how Chromebooks with depthcharge boot") new for v2.
> 
>  .../devicetree/chromebook-boot-flow.rst       | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/chromebook-boot-flow.rst

This is not a Devicetree (generic) document, so it is not the best place
for it. Maybe regular vendor place, e.g . Documentation/arm/google/ ?

> 
> diff --git a/Documentation/devicetree/chromebook-boot-flow.rst b/Documentation/devicetree/chromebook-boot-flow.rst
> new file mode 100644
> index 000000000000..84aeb0a17ee4
> --- /dev/null
> +++ b/Documentation/devicetree/chromebook-boot-flow.rst
> @@ -0,0 +1,63 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +======================================
> +Chromebook Boot Flow
> +======================================
> +
> +Most recent Chromebooks that use device tree boot using the opensource
> +depthcharge bootloader. Depthcharge expects the OS to be packaged as a "FIT
> +Image" which contains an OS image as well as a collection of device trees. It
> +is up to depthcharge to pick the right device tree from the FIT Image and
> +provide it to the OS.
> +
> +The scheme that depthcharge uses to pick the device tree takes into account
> +three variables:
> +- Board name, specified at compile time.
> +- Board revision number, read from GPIO strappings at boot time.
> +- SKU number, read from GPIO strappings at boot time.
> +
> +For recent Chromebooks, depthcharge creates a match list that looks like this:
> +- google,$(BOARD)-rev$(REV)-sku$(SKU)
> +- google,$(BOARD)-rev$(REV)
> +- google,$(BOARD)-sku$(SKU)
> +- google,$(BOARD)
> +
> +Note that some older Chromebooks may use a slightly different list that may
> +not include sku matching or may prioritize sku/rev differently.
> +
> +Note that for some boards there may be extra board-specific logic to inject
> +extra compatibles into the list, but this is uncommon.
> +
> +Depthcharge will look through all device trees in the FIT image trying to
> +find one that matches the most specific compatible. It will then look
> +through all device trees in the FIT image trying to find the one that
> +matches the _second most_ specific compatible, etc.
> +
> +When searching for a device tree, depthcharge doesn't care where the
> +compatible falls within a given device tree. As an example, if we're on
> +board "lazor", rev 4, sku 0 and we have two device trees:
> +- "google,lazor-rev5-sku0", "google,lazor-rev4-sku0", "qcom,sc7180"
> +- "google,lazor", "qcom,sc7180"
> +
> +Then depthcharge will pick the first device tree even though
> +"google,lazor-rev4-sku0" was the second compatible listed in that device tree.
> +This is because it is a more specific compatible than "google,lazor".
> +
> +It should be noted that depthcharge does not have any smarts to try to
> +match board or SKU revisions that are "close by". That is to say that
> +if depthcharge knows it's on "rev4" of a board but there is no "rev4"
> +device tree that depthcharge _won't_ look for a "rev3" device tree.
> +
> +In general when any significant changes are made to a board the board
> +revision number is increased even if none of those changes need to
> +be reflected in the device tree. Thus it's fairly common to see device
> +trees with multiple revisions.
> +
> +It should be noted that, taking into account the above system that the
> +depthcharge has, the most flexibility is achieved if the device tree
> +supporting the newest revision(s) of a board omits the "-rev{REV}"
> +compatible strings. When this is done then if you get a new board
> +revision and try to run old software on it then we'll at pick the most
> +reasonable device tree. If it turns out that the new revision actually
> +has no device-tree visible changes then we'll not only pick the most
> +reasonable device tree, we'll pick the exact right one.
> \ No newline at end of file

Missing new line.


Best regards,
Krzysztof
