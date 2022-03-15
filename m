Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69B5C4D98FB
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 11:41:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347169AbiCOKnD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 06:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347184AbiCOKmt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 06:42:49 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58196506E9
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:41:38 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3AF323F603
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647340897;
        bh=Wyk/ImnvLwvM+s0wTIfN19tP2iNmEMOz+2KBCV7gGwc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=rOMDoEJRyxhqkcJXgetJqNmJMYyfxsc57PA43uBiQB2EHtxlrEPDtjAPTw3OBOgO2
         3fl3qBFyPxmp0tfbCQC7Xwryopq3hd8MWmipPHUcnTvy95KU5IgwDATj1p/86D4aZK
         CKmva4Gxe73m/zkb83FfDLDHY0F1TAGI+wkDQwcWPv46N7QvkPFdngV36ZUqf5NKoI
         OHXgLEtrm4DbfP9mybbeVPPwTcArQLF7oN70S28AutBmQCyixCP1LNK/3mZcVGlLnk
         1Wk3vML79RUTegU+lP5MDgybht91udFSPtPQQqZGpG3iflqAArzTwCxqf3hD2AW4BZ
         HpM0kaxmN4IzQ==
Received: by mail-ej1-f70.google.com with SMTP id jy20-20020a170907763400b006db62b6f4e0so9444211ejc.11
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:41:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wyk/ImnvLwvM+s0wTIfN19tP2iNmEMOz+2KBCV7gGwc=;
        b=wQgRHOHQ3YcAB3EjmoyfgHqNDZOm1A7QXEGLPr4rVkizC9D0FZ1FVzB+JDAoEduiQa
         IMR5dirVxKnvTvnW36u1P7/a8ovtmYS1KEvZvsMxMLYq+k0zei/mHkFI+pG/QA5YIIB5
         10XsvN77UghFBEyO+MQA0c9odu0VfJD4JWvKBTwZcTB/16R4VnXHcJCgC3DAWAaxCEVZ
         x8iHWQ6N7cjimCTXCDWA2P6S1TOSVUQtoxsB0IrunhRnx5W2LSsB+/EtJCwdMkn5tC6U
         qq/t/SYRLfAAfCFzH8P0DON3N12AF6js0uJMO05sOiu9vC4FSFdW7qLZh73fpy9jS7AP
         0f/A==
X-Gm-Message-State: AOAM530oRQyX52KgCuPW7WNzksODB+dYK1vZbtkV3bj/LbwijP/QdSHr
        UfScMUDTrQyGo7ZbrK8v3VQYI6+M4DtSHZ3dmiNmFNN6ibgTXWhVO9VpPYWB4CY4gk+g/BNnxAy
        dfRqG9vowufRzSmScfrdiLCp16bZ6Ko3AK+HJyws=
X-Received: by 2002:a17:907:7711:b0:6ce:e03c:e1e2 with SMTP id kw17-20020a170907771100b006cee03ce1e2mr22297909ejc.769.1647340896862;
        Tue, 15 Mar 2022 03:41:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyiTwTMsZYo8Frmsd5mds2vIg8CSZa4i21V434ur6Hyi4kW6gCcdaJ79x7rckl9dOTeQHzA6A==
X-Received: by 2002:a17:907:7711:b0:6ce:e03c:e1e2 with SMTP id kw17-20020a170907771100b006cee03ce1e2mr22297888ejc.769.1647340896685;
        Tue, 15 Mar 2022 03:41:36 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1709066b8900b006daa6015a0dsm7856522ejr.89.2022.03.15.03.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 03:41:35 -0700 (PDT)
Message-ID: <e7f9466e-03c9-7754-0dc6-a04823d1047a@canonical.com>
Date:   Tue, 15 Mar 2022 11:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
Content-Language: en-US
To:     Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>
Cc:     linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
References: <20220314232214.4183078-1-swboyd@chromium.org>
 <20220314232214.4183078-2-swboyd@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314232214.4183078-2-swboyd@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 00:22, Stephen Boyd wrote:
> Add a binding to describe the fingerprint processor found on Chromeboks
> with a fingerprint sensor.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Craig Hesling <hesling@chromium.org>
> Cc: Tom Hughes <tomhughes@chromium.org>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> new file mode 100644
> index 000000000000..05d2b2b9b713
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/google,cros-ec-fp.yaml#

Why is this in the MFD directory? Is it really a Multi Function Device?
Description is rather opposite. You also did not CC MFD maintainer.

Best regards,
Krzysztof
