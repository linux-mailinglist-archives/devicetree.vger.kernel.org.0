Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6133655FCE0
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 12:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232999AbiF2KJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 06:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232356AbiF2KJK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 06:09:10 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4516595BE
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:09:09 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id u12so31485301eja.8
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 03:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kOG/JWVNyRXNOwvqncCg98QGjyVndApeAsoNFJ9EEpc=;
        b=SPvyCOHRGBOoglOkiGybHP9AxC7uH5ADu5JYsZACdKgu+GIyr8qXjrpDZav1ZXXEwD
         cmhsaaPiURzR690pIeowX419mkA02VnjOyN6ww3AwPT9nU5TxnPiQ8G4MZrqe3LmOLS0
         gl/vk5aOuqRWYP/3Dn2NLCTpv6+PWjF/Inh2fZmBCgdwQ6zlvRfWtFUGO53i25V8dAXv
         OFQ9UyZQRSlhAm4b7Xc1qmOjbkPfOagQ1FH+WiXjlgPf+kabMOAnVLM8Nz/4+Oy0Jb0e
         7u6N6ymDO/TO1+iC3cHkC5D8d/iV0j8r6xfjMViSBK2ZWPx7iUZG79CkmhZ9P0aJjEsV
         WX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kOG/JWVNyRXNOwvqncCg98QGjyVndApeAsoNFJ9EEpc=;
        b=YKin7ywztRR4YWoYgvjzf8S++kIzLqa2fVWfdneRq9oEKQV6w1ry/wT1C9S3fwl/a6
         /LlB1Mdaqf+nxIaTlUXPX1dkV3UBAwEx6oJCMm0sZhQa/9Z4P11IfQcIAuc096L2U6e9
         bJnEzuTyGzP8Y0W5avG2gJrvkWeiM9j6Hre7GIXR990Xbcr+w46Pp900PEwqlLwnxqqw
         umoqjEOzvdrFHPHHIZG0RkxhzD9xEy3zmyeFwc1x1CoxdcaSveHLIl0zz3oId0wOFUnA
         abXC/bCvsRVqU1aovtYRuNFIiuY/x4wuIHkovp4mkGq2+9oWrvdPkRQLq3p/F2SXED7q
         anpQ==
X-Gm-Message-State: AJIora+le1fJFyYnuxy7wx0qMBUQ67nwiiu4m+D+5zxIncJsGlQmjzF1
        UAAkLVsLBQTl72vUJwWu7mmcpg==
X-Google-Smtp-Source: AGRyM1uEUkF2oU02+y1bX9QnKwHMZrY4AIXAQRxfR95jbf6nQFrDRgVaghWhX+n7kh6qDD/vb6dszg==
X-Received: by 2002:a17:906:216:b0:711:f623:8bb0 with SMTP id 22-20020a170906021600b00711f6238bb0mr2658240ejd.174.1656497347822;
        Wed, 29 Jun 2022 03:09:07 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r14-20020a170906c28e00b00722edb5fb53sm7578893ejz.116.2022.06.29.03.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 03:09:07 -0700 (PDT)
Message-ID: <7f7d7aa1-0aa2-0ee1-762d-e47aaa5548e2@linaro.org>
Date:   Wed, 29 Jun 2022 12:09:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/4] dt-bindings: misc: tmr-inject: Add device-tree
 binding for TMR Inject
Content-Language: en-US
To:     Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, derek.kiernan@xilinx.com,
        dragan.cvetic@xilinx.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org
Cc:     git@amd.com, git@xilinx.com
References: <20220628054338.1631516-1-appana.durga.rao@xilinx.com>
 <20220628054338.1631516-4-appana.durga.rao@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220628054338.1631516-4-appana.durga.rao@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/06/2022 07:43, Appana Durga Kedareswara rao wrote:

(...)

> +  - compatible
> +  - reg
> +  - xlnx,magic
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    tmr-inject@44a30000 {
> +            compatible = "xlnx,tmr-inject-1.0";

Ah, and one more - wrong indentation. Use 4 spaces for DTS example.


Best regards,
Krzysztof
