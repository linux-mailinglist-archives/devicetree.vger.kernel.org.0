Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65C1567109E
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 03:06:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbjARCGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 21:06:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbjARCGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 21:06:31 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE9F4AA6B
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 18:06:30 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ud5so79872833ejc.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 18:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzS/zvWe4dE4qAlzyHEWNojqR1ZH/s6LTLUTq8cJCDs=;
        b=x1UIMFzhhzmPp33rMJL9P9/UdyqBh0ezz8HdRiZ+FCVBLR2OShryDc+uG9Xvznt0vB
         5cCrPmQCV0teL8HGC5L/s4RV3HC8ChldGjXbGsiZwjPVrQe2smTtDRRf7iqYqqn86TTk
         LVQbZrb/+9Zbg3bHkzZp0HPycouflZYRFZ5BApQc5fCqveUceFQQI8X4Q9TodF6H0E+L
         PsV3n7mIYFa0vm7jF+alaBDlUtsWJcHIWlCpZuUQsUxXdr+eF8htRbeQoPbKWKoaWv1C
         w3P3jvnRQvUG7MFjeFymVS6p0OJBFlCKHbVNzYuTwjmpB+1q1Q1MGH55JGmDjYtJbDaG
         2bgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EzS/zvWe4dE4qAlzyHEWNojqR1ZH/s6LTLUTq8cJCDs=;
        b=cZ4TtCFKb/KrNLvNa+w4aBTiNih5aIZWo+cJCM4yp18WJrBYLuNKqzdxXw/B6M16aN
         PHtjVZomYiJDQteB5Bhzx3EQvZob+QPo4x7mU+EJnQ0IH3FHEKqrvE2NmT5TitL0Sy1I
         YQ8NGo+67e6d4CKmxGBgntvUz7otOhwdfIzTZbT90yoL1YynI0LMsaS+wCjW26IImOac
         r5L6op6f6hrWkJt1SMIAFjYvuceWplUEmliCcpRbUiH3r6vFUjkA52gnJ9JYQGMl1TnD
         kYVupxG+RB9Vy9N8nrNQ5ZLv5EBmAmoX3+fykAiNhmPNiS0EqQqkemhIABC5o9wOxNXl
         pkZQ==
X-Gm-Message-State: AFqh2kqmThalAeyH7j0nTlzPR7xzaia0dlAqeO4jkq0VXYl+5pNNBhV9
        GftleUGty5+t2mdaEGeGzhbS9Q==
X-Google-Smtp-Source: AMrXdXtPspMwAZbGwbr77eEM5eDgiYrt4RPaQoYwIAtRNNe3VLezx4/sosP5jnJFOjMOoW2VPQl9oQ==
X-Received: by 2002:a17:906:ca59:b0:870:7e7d:97a3 with SMTP id jx25-20020a170906ca5900b008707e7d97a3mr4427567ejb.59.1674007589171;
        Tue, 17 Jan 2023 18:06:29 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id kx1-20020a170907774100b0084d368b1628sm12702694ejc.40.2023.01.17.18.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 18:06:28 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display/msm: qcom,mdss: fix HDMI PHY node names
Date:   Wed, 18 Jan 2023 04:06:11 +0200
Message-Id: <167400670545.1683873.1367688768865327080.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109045453.316089-1-dmitry.baryshkov@linaro.org>
References: <20230109045453.316089-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 09 Jan 2023 06:54:53 +0200, Dmitry Baryshkov wrote:
> On Qualcomm devices HDMI PHY node names were changed from hdmi-phy to
> phy. Follow this change.
> 
> 

Applied, thanks!

[1/1] dt-bindings: display/msm: qcom,mdss: fix HDMI PHY node names
      https://gitlab.freedesktop.org/lumag/msm/-/commit/759cc4914fb0

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
