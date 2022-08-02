Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8833C587867
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 09:52:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231804AbiHBHwX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 03:52:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236174AbiHBHwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 03:52:09 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 068CA25295
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 00:51:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id e15so10757825lfs.0
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 00:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cn51p0KK5AwPfFBjHjkYZlS8OhNFPyyTIZmnYAAHbPY=;
        b=InXPX1j9odFpknaEjlChG+RrVCYZThDQZJcC10uYwXAfrvStXYiB0gTpF6uxmuLvbK
         CQKGt1NQGZS/TasOS641HcrUFDyEU/eNYbcX7vYXXjO89D3iCbOhbPn0Lsz7HbAt9US2
         gu344TKSlW9b1Fn7ksm/Al8Ia5FnhTmO+QQcynO71Jg/8372BEasVHptfq6roVVLyjiL
         Grp/LF5uDmNjcmJLOoKEZPx4l5FBGVGmHEar7PeGAicTn6uCQ07dbMACdKQX0oyWX6g3
         UpcOih00WN3ZFC0xCMAnhyag41iU2jCy0jY1SX/Y3C+UrHO/r42b6CSL0UBOhvYLlIB9
         pCgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cn51p0KK5AwPfFBjHjkYZlS8OhNFPyyTIZmnYAAHbPY=;
        b=HSUaYksUDP33jrqStwkc52LhtLZDNaAs43Z/kyeKh5UZNMI1I4FeZLlTsGAkzAfSCQ
         ms8Wo2UUz2QJkMd1GatU9dy6wlH32cjjdcrvk4O8X+oYBZWAwEMrgfhr4/z1VoURXCHT
         7pqS5O3+f17ulSHlPi18QOIGDS6S0CeprA5bmlYxhW9YKtWsXa5/ytqmGq8QwjvXd8Sv
         9clpj4J8dSznhzpNB3U0HkfIp5ON/Q0AHgK6zqNQkC3a1CpDyHj0th2bWR+L4hyA6DLl
         DL1eXGFQTbxQzTwUU5R3JuQyxFQGoBqPjNGnwHHaXMTzzNaZyyAMJMQAvKAcS3dYXlzZ
         7fgQ==
X-Gm-Message-State: ACgBeo3eeLTuBrX/MdEt/drKMeQ3d3p9YgxwvCGji6ltRyxmCKpcYViy
        sgmxHEf2Yn0Gg+KJhbxRINowZQ==
X-Google-Smtp-Source: AA6agR5F85JMQMAP0SXJjcFFcy1LTpbmenAYzo4rcHwM9hd9cP0IwmZPTQAZsgOI16W2TE+ecTwltA==
X-Received: by 2002:ac2:5b8d:0:b0:48a:f61d:68a6 with SMTP id o13-20020ac25b8d000000b0048af61d68a6mr3306815lfn.603.1659426708247;
        Tue, 02 Aug 2022 00:51:48 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id h15-20020a056512220f00b0048aacfb326esm2012536lfu.145.2022.08.02.00.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 00:51:47 -0700 (PDT)
Message-ID: <584e385e-7790-87c1-55c8-d280ae2fb9a6@linaro.org>
Date:   Tue, 2 Aug 2022 09:51:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: net: dpmac: Add phys property
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>
References: <20220801181347.3873041-1-sean.anderson@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220801181347.3873041-1-sean.anderson@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/08/2022 20:13, Sean Anderson wrote:
> This silences warnings like
> 
> arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dtb: ethernet@8: 'phys', 'sfp' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
> 
> Fixes: f978fe85b8d1 ("dpaa2-mac: configure the SerDes phy on a protocol change")
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>

Don't  we have phy-handle for this?

Best regards,
Krzysztof
