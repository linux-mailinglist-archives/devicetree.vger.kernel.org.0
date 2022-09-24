Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F8315E8AEB
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233342AbiIXJcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233204AbiIXJcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:32:25 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0BA8E2349
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:32:23 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w8so3656721lft.12
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=LJaLm182QkoKzGWu5uXx5putxoguYh6AcVXczHW8BbwZmR5tvIlT4rubtVEYkcTM+g
         gU2B/dACe/XMk/5j0mzgccCVAkOCZPiJFKenwghxIXAcTuU0SAv4/KovX1aeILDICz4B
         G0sTQpqUzbll0jsFHNVKyNW1sMTJuD7I76nwBjwvMn5fySSHfiu4e4LokzMjzLyAKe0x
         t64jtzuSDJY0qNeJUAwLIg74NjySWq5wzdXnXGSsxQUj8Mnh296273SIjYX5dfxYERwb
         QYHEJoZJKt2Jbp5hNn2Yq6ay0gsGFgczpoTaWOhWRP4eX4TIGvlUwvMkrQhBCVDUpRZY
         kpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=fOcTKFGseM4RUAr5f5t8Ai9TF5KP7AjRVpvRL+QZhMs4nT4JsFTs+TeX6zHTnx1Y4W
         4/u6zcRi1C4mdp8dRyz+1ENoFOd5xKpckXutc/VpWRJYwrXyqZMP7RzJJ05ESzIvJL+u
         rL8zGw1IOgHXyy8rL8008TfkjUU6Ltbw9hbShrOqGrbicH7gkd2iQ3iNBQ14vfiDzL5c
         mkYeLiLigAlVKmYnItaxE2YtiqL+aQV/emAPYhmaKrA/d+PZVaO1/2f9jCmZh5ObZdfj
         XdojOZnsO8G352uov5ZPelb7CS+0rEFfP/GwnUVm9FI9hYIcs6yjylanyo/Ns+MCqNFW
         SaBQ==
X-Gm-Message-State: ACrzQf0roEz5XH1XBPNBjQuquxnnEQFn455ezg+R4NWCLPoAh94ZoL/o
        IMF9eBJvXYWPtJwpJRlJZ7ZlUg==
X-Google-Smtp-Source: AMsMyM7rUVXbSCob+vZTjIU2JFurM6xW76UMUJQQvpdFWCrYg7ZGgStla+hlXC08Iddk5YCHIeLicQ==
X-Received: by 2002:a19:6446:0:b0:49a:9b06:f4be with SMTP id b6-20020a196446000000b0049a9b06f4bemr5056375lfj.157.1664011942279;
        Sat, 24 Sep 2022 02:32:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k1-20020ac257c1000000b00492e98c27ebsm1841892lfo.91.2022.09.24.02.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:32:21 -0700 (PDT)
Message-ID: <4847bee8-6370-5be5-1ef2-e3deef1a395d@linaro.org>
Date:   Sat, 24 Sep 2022 11:32:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sdm845: change DSI PHY node name to
 generic one
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
 <20220924090108.166934-9-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924090108.166934-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 11:01, Dmitry Baryshkov wrote:
> Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

