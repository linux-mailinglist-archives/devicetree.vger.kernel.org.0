Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 986367401A4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 18:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231996AbjF0QwK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 12:52:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231812AbjF0QwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 12:52:09 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB183C4
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 09:52:06 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fa94ea1caaso472315e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 09:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687884725; x=1690476725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USpfAI1OKAg8OpDqtpnMJgq7elMP7uvf2P1RNsX/vYg=;
        b=VCEcHabYJExfQZ7CA8MPuO3bSHxPfDkhJbqqsgoW90ItGkyxpjKJq3RwuR4QWaC8Rk
         Ux6k0efVo6+a8hy349Y9sc0pksQnocG8ivXecX5sQld1JVwZn990ZlZS1m/RQhKW5cwF
         uLXraEdi7OpiRo7ko9nYwtI2/LSZyixWKWMRMUsRLi9BidBYT9izlLb8GXJuue1A/05D
         lOWyRvA/kPQ62xDISbHsTcf0pwi2cEIR7Kt0veehL4qotFA2kiqA2kST0PcSTh7Pgfgr
         HSN7irvJhu6qI6ciVrLaq6Be653ViZQ4a3JxgLHxwZjyjGs5U1+Vlzh9j5A+EEMxojAi
         5HmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687884725; x=1690476725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=USpfAI1OKAg8OpDqtpnMJgq7elMP7uvf2P1RNsX/vYg=;
        b=FxukiBFOZ8VsNH1MumxjJ9FGe4RzMvTvmY4QsIPo3eYnRE2AYAq6E44fvyBjwbwri7
         cgy9q1Fy3IdL8h9o/0AucKoCM+VBZlIlk8hXneWPPfndRQTrWiKFjIQxRF7IHVo4tuew
         5N8ORN5eYB/VuMO4115dDIRltseJvig+BbicgLuBvJ1nOsaDS7cFNsO0+7/DZjRQisCD
         Rfh9TL+bBteKY7ETogTHU5w3ZAf8lAS1MGFWmNarYjXPWYVfVAcQa12XUZdQQeTIbOJd
         XPTIRq353uSl33z0PPumpf5VAx5478WvA4OJiahoUWmmf9Bfp9fLrFBAw27AfJSZEkxk
         GnQA==
X-Gm-Message-State: AC+VfDytNxwhmLTuJD7oaHD8vZdDR2DD22SRDJnK5AV/uG52edvRog5Z
        XD6ra16F47POeE+nr90s40WSOQ==
X-Google-Smtp-Source: ACHHUZ7LzkqGsxsFpbadxBUX52EaujfQ1jgOJSmKZ8dsh0QhDuIh6RbbYX2hBZyk83iG9EWVNZLyAg==
X-Received: by 2002:a05:600c:2215:b0:3fb:416d:7324 with SMTP id z21-20020a05600c221500b003fb416d7324mr3786608wml.6.1687884725311;
        Tue, 27 Jun 2023 09:52:05 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z20-20020a7bc7d4000000b003f90067880esm14251778wmk.47.2023.06.27.09.52.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 09:52:04 -0700 (PDT)
Message-ID: <aee6e901-01b7-048a-ffe1-57a8895edda2@linaro.org>
Date:   Tue, 27 Jun 2023 17:52:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 03/11] arm64: dts: qcom: msm8939: Add missing
 'cache-unified' to L2
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Benjamin Li <benl@squareup.com>,
        James Willcox <jwillcox@squareup.com>,
        Joseph Gates <jgates@squareup.com>,
        Stephan Gerhold <stephan@gerhold.net>,
        Zac Crosby <zac@squareup.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Jun Nie <jun.nie@linaro.org>, Max Chen <mchen@squareup.com>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        alsa-devel@alsa-project.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Leo Yan <leo.yan@linaro.org>, Rob Herring <robh@kernel.org>,
        Andy Gross <andy.gross@linaro.org>
References: <20230627-topic-more_bindings-v1-0-6b4b6cd081e5@linaro.org>
 <20230627-topic-more_bindings-v1-3-6b4b6cd081e5@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230627-topic-more_bindings-v1-3-6b4b6cd081e5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2023 17:24, Konrad Dybcio wrote:
> Add the missing property to fix the dt checker warning:
> 
> qcom/apq8039-t2.dtb: l2-cache: 'cache-unified' is a required property
> 
> Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

