Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D242D5301E6
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 10:40:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347046AbiEVIkX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 04:40:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343893AbiEVIkQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 04:40:16 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D343897
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 01:40:14 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id f4so20808044lfu.12
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 01:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GQqI2IgfxMVpkbH+TKYs+2YI/B1AHZlvieHypWI+1po=;
        b=hzRh8xx2JaKPKaLoHMEPuOGKeRd7XTpLY4PEsGeG8Hlzk7xdgR2VN2dyRlKJWUQ2/4
         SGNnQJAqa/D0YVk70ZwFi7Fq6TqIaigZNXBfIQXCylZeHf8IBmrPkD59cPonkN0+a8LP
         Za0nXkiKb5uJ+aK5DOUrFnjkG2EYIPEsBKRW2wJB0Ox0N9WmNoAkfWUVmrDi3doW2wvP
         CKL/7idf+Z0kaAsI6tEpzelTq/slCokedNu2bvUhA5t9vJAmXDI2qw6KaDhbLyX1jrn9
         4bZMBTd8hHgU1g6PjlB6lTiCIubfSDfPReanILO6i2CFrTcSJPVZitaCw1XBnSOR1EiE
         a7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GQqI2IgfxMVpkbH+TKYs+2YI/B1AHZlvieHypWI+1po=;
        b=S6tfEeMZQKJfx5mffnbbeuY+Lwz+N7RNF2mem7SepVMRRleGaBXHUyGRqIXBoOSx9e
         +BOzDeJ8whh/3aVRRN0jGNQHHVts18tAN3ot3hvAU5RjNiCbmRWcMEsH6wFljqo96OAP
         fzCPA7EZ5eR/sOGHjC6ewPBjcR9kR825hs0jI7MVVidqKkCsYgg/lHj5jxzJTkYNLr80
         Bx5g0YvR0N149mrhm2i92gUS0zo4En7GBPg+unImwsK6avrgG+ASfPAaw9eX4J9C9wqR
         dSSsx/1Cp/jq+/Ew55U0A6mrXGtUiiS4LjHGG6bVTloUNMjC6Gv8zcHq0owlsqtRkbZa
         dxGA==
X-Gm-Message-State: AOAM530pNrWjtz70XbP3dvACFQ6Pm+MMuEB72r/3Vt2y3WKUocvQTXCm
        s1DabLe09R7RFd1TNakJ8jdzRQ==
X-Google-Smtp-Source: ABdhPJx1AujbZlwCc6PmLsExDBrYh8PnETdpBGEZZGrcevIZ6Q1OjA0sm9bd9WBkTlHe+jAkrJkq6Q==
X-Received: by 2002:a05:6512:2393:b0:478:5954:8c76 with SMTP id c19-20020a056512239300b0047859548c76mr6569873lfv.399.1653208813010;
        Sun, 22 May 2022 01:40:13 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r12-20020a056512102c00b0047255d211d6sm1366952lfr.261.2022.05.22.01.40.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 01:40:12 -0700 (PDT)
Message-ID: <d5b82134-b3c4-47b0-dba6-a924392aeed9@linaro.org>
Date:   Sun, 22 May 2022 10:40:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] ARM: dts: qcom-msm8974: fix irq type on blsp2_uart1
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220522083618.17894-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220522083618.17894-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2022 10:36, Luca Weiss wrote:
> IRQ_TYPE_NONE is invalid, so use the correct interrupt type.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

This is needed:
Fixes: b05f82b152c9 ("ARM: dts: qcom: msm8974: Add blsp2_uart7 for
bluetooth on sirius")



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



Best regards,
Krzysztof
