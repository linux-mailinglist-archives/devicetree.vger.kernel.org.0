Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50A33551316
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 10:44:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239573AbiFTIo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 04:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239354AbiFTIo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 04:44:28 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E1C35593
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 01:44:27 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id kq6so19618264ejb.11
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 01:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jbuHCNS3OsbuB14zXqMTZbn7sAxDckRnnJ+WYM/cbbU=;
        b=ZwIA/Qnhfi5xfKT8y1yrsJWbevwCN531zW4mLOETfhklOrPrrS2Woo/IZvNDMyK10K
         Hw03XC0h/p0Pg3mrHR5NNfwwQwIij7axyWSaRZ7jeaEWLDuY9084KYkjWJUcqbiJQ229
         KCHq/Q/vAnBQw9cS8Cy9mH0oDrVbUutadMVZvUskc7UbOfJPwN8Z+9HaMrampohjlUKq
         8/Mqjst62TXFkPyTj8s3xpAxJa92JK3CdEAR61DyXar4JXvqufqztippkeYoAv489GSv
         xYPiQCmsWpB0guNChxqyA9TmLHdgUERvChIzb5Lgj2yO4fT6qMy2aQOj4klrEkOkyGo7
         0mTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jbuHCNS3OsbuB14zXqMTZbn7sAxDckRnnJ+WYM/cbbU=;
        b=ZqKkYBnmgP5G7kHouyE7jUOXqB/XISoQBzMIuKM5vePpIaDvVCIIfDQJSDlPonvAcI
         rFdoI3JlD9/EMElHSQkS/A5x084QaLfa5prFeBw3+ec67r0Ddsz65poeFHVqLHDjWdIX
         Z5n6opoL2ngGLAAqw6zRtAJDnVqvjrr4Ag30dYsZFHj1ePUYbBGCAmjRvXK6skcMn1YJ
         WOwkW4Topt3svhe3pGsQkqUsTbswg3x9pGhYAeFGE8rgqw9dUzr0D2POMwh4tK3OiWN7
         hy/JywcWv3MBSFlZ39PVCx6BEjkQMpwZET/2iu8UTNMaPorkHFuGeJ0tdQfUqRgt4CZs
         Muzg==
X-Gm-Message-State: AJIora8sd8HJGvxL9YEgz0dbZuQhn9XIKZm2DFHBphYQqOysVIo3+lhD
        NkvjDwTjF+ke4IBICWc5n+FDDg==
X-Google-Smtp-Source: AGRyM1usrRAbvRtTfJyeMHsqxR2asoTm2C1H1HtsyIpxxvE11PA+G3nY2Tb2OC3QKDrmw34xMlcEtg==
X-Received: by 2002:a17:906:1109:b0:711:da3b:bdcb with SMTP id h9-20020a170906110900b00711da3bbdcbmr18922623eja.210.1655714666082;
        Mon, 20 Jun 2022 01:44:26 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dz12-20020a0564021d4c00b00434ed381701sm10069136edb.35.2022.06.20.01.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 01:44:25 -0700 (PDT)
Message-ID: <012d0f02-05a7-ce34-6a24-3e3e2f59f404@linaro.org>
Date:   Mon, 20 Jun 2022 10:44:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add
 clock-cells and XO clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
 <20220620010300.1532713-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620010300.1532713-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 03:02, Dmitry Baryshkov wrote:
> As the QMP HDMI PHY is a clock provider, add constant #clock-cells
> property. For the compatibility with older DTs the property is not
> marked as required. Also add the XO clock to the list of the clocks used
> by the driver.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
