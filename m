Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 280DE6107AE
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 04:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235236AbiJ1CMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 22:12:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235662AbiJ1CMo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 22:12:44 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB1DB4490
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:12:43 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id w29so2723554qtv.9
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XOig2GJh/ZrkkMO4re3uTMHnPxc2ZjxhSzqqi158pI=;
        b=cB8YRF6bKcSRckrSDMJAjYPoShpSWGC4uvh1TsdUnKDOeH+JHtAQpm9I62oqCfWatD
         MlzWOSTiBmiboUN5BX8lJRNS2LZxGw2J0RHvP3x+iI6jDAetm5tx1/PvjcT1E8Ioh8WT
         kJYihdZJ2BaZM49e04E91m8UAdsNnQTTTdIjCQWmQGQSDnpYgT4IXHTRjMYR/0w/wRpF
         XLP4Ecci4bt0U+1Aq5OdOLeKTOMm37iO9th1yvcF3+fRp4XGQs0RcbnuuM1QX9OTOdb6
         clKnNetKyHUSpY1nU9U9wlO8YiyGmN7zWKZSwzpLpgtYpe1qn/tu/dHXRwqCipIgpQkg
         k6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1XOig2GJh/ZrkkMO4re3uTMHnPxc2ZjxhSzqqi158pI=;
        b=sRcs7t1X+3RoioyMCQs98CnUpLqa+o3ZPgI5ulVldzEJ2Gc7taTivT9jProC8faYhE
         ppYc/b5qV5SUD4uWUeGg2+AVSbw7ELZ10j7swviJbOf+09qer/caiA33Wz787Gkmi7Ll
         8F3pY9gWuzsDL51vFC8AygzaZr6j0dth73CaY4NnUXy7A4y3MTxtNfUldCgXbWsvT5un
         A34jcTnIU1Cy8UliFNrBbRihTE/aiZodYyvU1bbHvNcdQxOqSCiuq24sihnHDhaR+r5k
         UKkRJNWn5Oi2itp/v8uewUbPicewYkRfs8rnZAutx2RqplqM2POgKsZPDXF+KoF9/Pvb
         KwMA==
X-Gm-Message-State: ACrzQf0oForQT79wT2DMLvytEXKduoMUQubBmffmCVtuFDxUE78veBhK
        z27RugtQc+E27Ac/IxVUGhR84riV/FqbXA==
X-Google-Smtp-Source: AMsMyM7sv5YsOFbu97tfGpPtGNRTBVc4iVELyLGyC1dtJbvNsYfhrUb+y8hwhZpIr1Vp8IIjAQxdjQ==
X-Received: by 2002:a05:620a:3715:b0:6ee:cbcd:3e8e with SMTP id de21-20020a05620a371500b006eecbcd3e8emr36341137qkb.98.1666923152041;
        Thu, 27 Oct 2022 19:12:32 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id cj21-20020a05622a259500b003a4ec43f2b5sm1729889qtb.72.2022.10.27.19.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:12:31 -0700 (PDT)
Message-ID: <40833a8e-5b0c-4a63-2c8a-131374236901@linaro.org>
Date:   Thu, 27 Oct 2022 22:12:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 10/13] dt-bindings: phy: qcom,qmp-usb: rename current
 bindings
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-11-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024100632.20549-11-johan+linaro@kernel.org>
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

On 24/10/2022 06:06, Johan Hovold wrote:
> The current QMP USB PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> Later QMP USB PHY blocks only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current bindings after MSM8996 and
> add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

