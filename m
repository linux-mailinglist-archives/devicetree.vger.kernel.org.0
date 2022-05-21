Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F6F152FDCE
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355388AbiEUPYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:24:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239672AbiEUPYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:24:24 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABEAC93466
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:24:23 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f4so18756923lfu.12
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CJkhEfssZ1BBajH4a78QgJeIvXv9tPvvFZTXYZYK5WA=;
        b=stcDvw2efBjXUVD+LgS821+CqRfQqT5CIwCHlvwXIgvxDFOxyPdb0vfHChx4Iso8qT
         jQgfHwnPu5xPntjsS0qvKcywrnKieu+XGQbSAtsIzIQGJAgh+NcfhrBOqGIUI5jbhw6t
         e46V9mm19CfrjSkXJ3xUTbyOsdZK2LcAKdAYdPTZuHnmBUOXQelnqZFa+DZyZRXbAkCO
         GfCiG4dtu2B2UGBWIQYurv38N3ALT+OBwz+v+WBknIPGZEUzH057srPCmxbf+nKnf0uA
         +YLjjPAfjEnkdMt7YHBbnDwmFEafobdPnGdptRDRsK/3OaJoB1af4ZeYnhm35n5vmVU8
         FOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CJkhEfssZ1BBajH4a78QgJeIvXv9tPvvFZTXYZYK5WA=;
        b=kM3B0LyN2vSpr6EWnQhWJbZQrTyyvuj4DZLqNIHwoiWzOh3h6SMhFfTU1DhR6twsOw
         SKdgAb95SlF6Tz9mHCwtJBS9h6d1pToV8nnEjqlVt6cKdsqu2lmwnErJaJAS8HHma9ux
         2JAFkRpcVjRcxroMQ7NYVv1izC0wZ5FRQvh/3aVYi5uGTmsrAZhwbLE6sNyjwnN9UeFQ
         xtqp2yA8V5Jj0JuPzBkrdcNwp221QV79Wu/7ldRjV01IkN70s9CsCSKeegEOo4l67SK5
         qpi2tlcm30gY6COTjnDHih2FhtJKJQ1iDc009eOvF7Di7CYggkBMfRCeboBVuksk2z+6
         nfFw==
X-Gm-Message-State: AOAM533JEOKz6l/ABRizgFxcsv6RpFcc8Y/ac/Jpn+I5jmgtzlxYuOr3
        CgmHge9j3H/yZ+Udj//KsdWlUZIIY6+zHSpH
X-Google-Smtp-Source: ABdhPJyhLUZEE3ixw5JcnXmxUBJ7o134ZD/XU/hdbbznOJv0u/6InKS51qqX+SPPunJINfiLc1sSVQ==
X-Received: by 2002:a05:6512:1691:b0:46f:1e0:d0 with SMTP id bu17-20020a056512169100b0046f01e000d0mr10114108lfb.91.1653146662107;
        Sat, 21 May 2022 08:24:22 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r18-20020a2e80d2000000b0024f3d1dae83sm753086ljg.11.2022.05.21.08.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 08:24:21 -0700 (PDT)
Message-ID: <dfb17f12-3d12-6959-5067-978809392938@linaro.org>
Date:   Sat, 21 May 2022 17:24:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 2/4] dt-bindings: clock: qcom,gcc-apq8064: split tsens
 to the child node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220521151437.1489111-1-dmitry.baryshkov@linaro.org>
 <20220521151437.1489111-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220521151437.1489111-3-dmitry.baryshkov@linaro.org>
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

On 21/05/2022 17:14, Dmitry Baryshkov wrote:
> Split tsens properties to the child node of the gcc. This follows the
> lead of ipq8064 (which also uses a separate node for tsens) and makes
> device tree closer to other platforms, where tsens is a completely
> separate device.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
