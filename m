Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 242335B1E39
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 15:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232265AbiIHNMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 09:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232263AbiIHNLl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 09:11:41 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77594F8274
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 06:11:17 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id c10so10347652ljj.2
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 06:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=R+2eNpABZn1sWOuP5qsIz82wyLqG7isobx2a9FSrbqs=;
        b=c/YVkfb0OPNeWY0nklaFJblwA5Qk9t+JyRbsPGM5tFqk3140FSWNCL0kUb/C0TwLhx
         xe+R3w0siDgMu+ijyf33nR/Ry7BFZ2WZSRsXC+nP7dQOO6O5vBxXOFFzx+WMXdbgSMIb
         1k6JcFE3q+mlqo6/ZNr0D/z4Q1O0qO2wN4MGt6NEHLn6+C1OgcFCsHviniKEq0eydqpa
         ZTtTDIfI35dPlsvb8OAHczyQu1D7SA837f0dMtAu+oLuKpaDzD8KPC3nksPePsIX3eCa
         00HXWoX1q2eyKX6uVqTYF307iH2lGnFXdtPUtRBjL2bQFasb386fz3VFvdBD7alT1gGl
         1Kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=R+2eNpABZn1sWOuP5qsIz82wyLqG7isobx2a9FSrbqs=;
        b=BcFhSE+JMuYijzDEoeTgl+sIDZbjjIm/ujJcfyjlVOA1pimzWeDGN+/BjEVPntoij6
         DbDASJvQLCGKNsTnX2JUDvfGCN2DwmeZfMTp9OOJdVLTIED7k52uTae2akl+eMgkZMPB
         FcaALNAzCDjugbQ+bjFcA8r1uccSvB1yxrH513jwhxkkO10lYrO87UKVCQotm3PeNbfc
         Z9E4m8+R4oSKNGnHHXfuB09PfsmibBQrCmED8N5RdssqDhHPh+fXpPjobYEYPbfZFKcL
         cpoEkM7gL+Xl6s042hl+QRST8BkeQJXPux4x86ZUeid7JI2MxQ6rwlnwq9iJ6zzDvG0x
         sgsA==
X-Gm-Message-State: ACgBeo0xR808ZDChVF2Ecyswhst07AavUP1wsMPA8+tnXsNuknrhBHHc
        1MqMlDnto8O4S7FKA3UAiwGQog==
X-Google-Smtp-Source: AA6agR6XTSCoPKYWJ6UEn+TGFiGOOZzYp7Yq+3DFNXMHTdLaatWtlWTLRExpcagv22LrAtpgO6jPcw==
X-Received: by 2002:a2e:bc21:0:b0:25e:c921:f7d7 with SMTP id b33-20020a2ebc21000000b0025ec921f7d7mr2392355ljf.91.1662642669047;
        Thu, 08 Sep 2022 06:11:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a18-20020a2eb552000000b0026ab2a04055sm1243389ljn.130.2022.09.08.06.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 06:11:08 -0700 (PDT)
Message-ID: <1b38adc0-94e9-69d1-91a0-08fe80c591e4@linaro.org>
Date:   Thu, 8 Sep 2022 15:11:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: timer: nxp,sysctr-timer: add
 nxp,no-divider property
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, daniel.lezcano@linaro.org,
        tglx@linutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
References: <20220902111207.2902493-1-peng.fan@oss.nxp.com>
 <20220902111207.2902493-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902111207.2902493-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 13:12, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The base clock input to system counter is internally divided by 3 in
> previous design, but there is change that no divider now. So add
> a property to indicate that.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
