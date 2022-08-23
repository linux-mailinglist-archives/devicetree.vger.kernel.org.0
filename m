Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E89D59CF03
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 05:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239475AbiHWDAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 23:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239152AbiHWDAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 23:00:17 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE195A839
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:00:16 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-11cab7d7e0fso14128624fac.6
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=bjV5e2UkotDtwOzVATF34/U7fC7PX6CJAnehb3qpJfY=;
        b=bHx2Z/grCVb0PTuIK5PvVrWSZQOTpvcU4vPeAw8uHdD1AZWhLrGeaENHl9cLaIZyDp
         YXe6AqegtoZLhKtNGxcWGVzvT32gU8doei9PfA2REcjXeOIAdxSBTDO7e+tIbAA5c2EM
         4Wsxcoh9wYt2FJ62xjiIsrvsIHK4478WkvRFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=bjV5e2UkotDtwOzVATF34/U7fC7PX6CJAnehb3qpJfY=;
        b=6iiyzTjrMVdjZsTMmNsKSPOuzrVtn5OVKwR8uNCFUcnsCO8xhHPNZZsjbPZ9qXnYJE
         dBtnttUl3+4GcYfvO4zRWbqu83DoiucVMw89SVFlY8b8lISUCxL9zWWs53piGXm5c0xk
         MLk5B/P4A1YyJb5ebxsA2+cYH+InnktmhYS/TSQDjXD+2Xd8mBp7V/o0ge3hv+9ZSQcb
         IvkTxe3uKVCC12Ockd/k+CuSw/HLEk69IA0kAAnZb9q9KyGTSYCpUldUK8krCdVKrq9G
         +pZz5bVtvci5RP/Lg1cFl5pUuav/Q7cp0WRaD/B48EIRvEcYN6ELQ6104KKfpHxpVy7J
         ebJA==
X-Gm-Message-State: ACgBeo2IJWZ/suC64HCkgC0nXOPdBy1f2DFMbVwnP0tTHOLoXo1epBQo
        wh3UrlffV1cR8bQkwefpoBi+X7sG0npdDB0+VCErYQ==
X-Google-Smtp-Source: AA6agR6NuFJEoswZf0ydPYca5vlPJobYmiK3bvyMD5ngQqSkejjppZMeHrTnKI0kG94UUhEVO6QDseyu/ixpu/5VVqM=
X-Received: by 2002:a05:6870:e408:b0:11c:37ad:773a with SMTP id
 n8-20020a056870e40800b0011c37ad773amr555285oag.44.1661223615728; Mon, 22 Aug
 2022 20:00:15 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 22:00:15 -0500
MIME-Version: 1.0
In-Reply-To: <20220822184900.307160-4-dmitry.baryshkov@linaro.org>
References: <20220822184900.307160-1-dmitry.baryshkov@linaro.org> <20220822184900.307160-4-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 22:00:15 -0500
Message-ID: <CAE-0n51CNfAa1oRL4R1csdM6Q9nbAOX8UT14AOA33ZDZ-WmP+w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] dt-bindings: msm/dp: handle DP vs eDP difference
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-08-22 11:49:00)
> The #sound-dai-cells property should be used only for DP controllers. It
> doesn't make sense for eDP, there is no support for audio output. The
> aux-bus should not be used for DP controllers. Also p1 MMIO region
> should be used only for DP controllers.
>
> Take care of these differences.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
