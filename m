Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42F5C4AA33D
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 23:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351185AbiBDWhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 17:37:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351066AbiBDWho (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 17:37:44 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61103D40830F
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 14:37:43 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id t199so10149883oie.10
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 14:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m4mjKHRRyWOx/QSo+fyfDltdRNhQWfYo9UJ6vkly8Eo=;
        b=WgCz/FD8yhYOFUt6PljmHtzXqh40o+AEEiuBBVTWwDBcQlK9bY9aJdL0S9uLZJqLQO
         KcBP9T8ieCLhQUxzqqwL42MxkM6lVqiyCjuN6ptCxVpXTNdEDQ8RF+bez1kHW86ClFrG
         NC9AoRaXlGtrkrExQoCJclSuW82/44XiP+yVmYagHKBpYBh/WBDXXpqRniYYHeiy++Le
         t3dLu2P/3/uVJetkK8PXuTpzn9KunsMXej+kzRAeC3SbAnGbcQafJ+zq4edzbf56HI9N
         BF+QG7Y9purZTkFC4PwzNYvDlE13cjGiEFOL3NmZDjncPxQtT8DaDosmF/ZclZC6Y7UI
         2H1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m4mjKHRRyWOx/QSo+fyfDltdRNhQWfYo9UJ6vkly8Eo=;
        b=48xZ6apI7qMqMlXYfa0SIaEh05WiOi5+HHWJ2bwH5fS5eUdTuIjt1RuY7LT141PIQa
         zpyfatBqE1ECI9LkOaAfaE986O781CXZxs4H0CjixxfM+3SoSw7BYGB3R5Zrswwq/K1U
         C9vOQG8CGn5YW4YOgofxE8CJLowxUp0X3KMOL8nAIZZ/ZGgfDTQN+HypZg9/IC81iS2V
         zK9hyF8wvdUFatPhhcl3DIkEh+7nasHyTJJdA/zn5Me4oJV124H8AnozBZbV9otL0aM6
         W6qiOEG3CznXO/vLZjiqP3uH86pR3enGP3R6eFLK9eyAIRf1ZwekBAcUSXG+jfHmHDsM
         jrjg==
X-Gm-Message-State: AOAM531WI92K1EKNYSFNkAzAxUiwsdsqJogH2RJ3F1DSU6bDKSH74cay
        tRPugbNYDKnk4ZEzbZo8vfivi6pcuwNLYw==
X-Google-Smtp-Source: ABdhPJyawiaiQeLzadnRHeiM9TF6jP50Z12Hb4yD86mxkjimWzTCeg12W0DrG0lp+jvm8biKNeihiQ==
X-Received: by 2002:aca:dfd5:: with SMTP id w204mr2525915oig.264.1644014262782;
        Fri, 04 Feb 2022 14:37:42 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id 71sm1263073otn.43.2022.02.04.14.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 14:37:42 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, konrad.dybcio@somainline.org,
        mka@chromium.org, Andy Gross <agross@kernel.org>,
        pmaliset@codeaurora.org, quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, sibis@codeaurora.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org
Subject: Re: (subset) [PATCH v4] arm64: dts: qcom: sc7280: Add herobrine-r1
Date:   Fri,  4 Feb 2022 16:37:40 -0600
Message-Id: <164401424604.3413232.8977987384470598288.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220204140550.v4.1.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
References: <20220204140550.v4.1.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Feb 2022 14:06:07 -0800, Douglas Anderson wrote:
> Add the new herobrine-r1. Note that this is pretty much a re-design
> compared to herobrine-r0 so we don't attempt any dtsi to share stuff
> between them.
> 
> This patch attempts to define things at 3 levels:
> 
> 1. The Qcard level. Herobrine includes a Qcard PCB and the Qcard PCB
>    is supposed to be the same (modulo stuffing options) across
>    multiple boards, so trying to define what's there hopefully makes
>    sense. NOTE that newer "CRD" boards from Qualcomm also use
>    Qcard. When support for CRD3 is added hopefully it can use the
>    Qcard include (and perhaps we should even evaluate it using
>    herobrine.dtsi?)
> 2. The herobrine "baseboard" level. Right now most stuff is here with
>    the exception of things that we _know_ will be different per
>    board. We know that not all boards will have the same set of eMMC,
>    nvme, and SD. We also know that the exact pin names are likely to
>    be different.
> 3. The actual "board" level, AKA herobrine-rev1.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Add herobrine-r1
      commit: 116f7cc43d28ccd621ff1fecc9526c65dde28dcd

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
