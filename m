Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8367F6219C1
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 17:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233976AbiKHQtm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 11:49:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233985AbiKHQtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 11:49:41 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7211B57B54
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 08:49:39 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id a5so23367357edb.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 08:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAuu4hWloYmftBKHb/d+/mSKClNOAP3hfPN38eMhM00=;
        b=ZMIJpDBTGymi73YrPFNDvi2rGWDySW0Kd9h0+KHCimcFqASahQoW5nTZcBF508L018
         8xtPVYDlnFYpkmLiVpZWmtDMxNdUntN3QiwlBsfgfIm0O4AYoci8I+aHOEXKlWKnaeig
         zT3nFZD+5XTHmnIaoPUtapkA4RHxF/xAEH4NI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAuu4hWloYmftBKHb/d+/mSKClNOAP3hfPN38eMhM00=;
        b=eCtWXNYgRr2Ld+2OWOteDt7rAGOUx+z1CzDKI/U+gRg0Iw+Ti/H7EPnKMbu4sCUvlw
         RB7Cbupro9mNVdQO6MmZh538DzOPG6z4NytQ/8Ey0AZwco/6wUXWqj8M3ypMVow7d2sO
         IY9+yDmldQLLkIywzc2IO4sZ4vYfY8LaD5CELsfOtU1hx4WRmGEMp+uV09ExwqwxwdWg
         8itCBPJacj5BK+bDdMgSaiShz1IMO8yVhChw/ourYAxc1HD0F1CG9y+cOD3H6DIZ9IT+
         ebB9JMVkKRZrr02S94Hd21pbimj5e44puETYNjRaM5/EGq4Km2smSIAJvHur0VJYcLyz
         Zy0g==
X-Gm-Message-State: ACrzQf3zpeEOyYFQYbt/+m/9ph8N78QgIdGmtmyeLrFOs/8b9jfqZcwI
        mpmZaF90RiGnXwbM5QV61hQOei3zccG2icm8
X-Google-Smtp-Source: AMsMyM7nrHm1A++6jqqV6/qmspuuMuNRDtD3fQZGI0l7lzuX2/9T0jwJU543WhjZtn8VArPntepIaw==
X-Received: by 2002:a05:6402:2813:b0:461:e7bc:560a with SMTP id h19-20020a056402281300b00461e7bc560amr57110531ede.340.1667926177726;
        Tue, 08 Nov 2022 08:49:37 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id e23-20020a170906315700b007a9c3831409sm4832036eje.137.2022.11.08.08.49.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 08:49:36 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id v1so21870718wrt.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 08:49:36 -0800 (PST)
X-Received: by 2002:a5d:6488:0:b0:22b:3b0b:5e72 with SMTP id
 o8-20020a5d6488000000b0022b3b0b5e72mr36416288wri.138.1667925709225; Tue, 08
 Nov 2022 08:41:49 -0800 (PST)
MIME-Version: 1.0
References: <20221107235654.1769462-1-bryan.odonoghue@linaro.org> <20221107235654.1769462-15-bryan.odonoghue@linaro.org>
In-Reply-To: <20221107235654.1769462-15-bryan.odonoghue@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 8 Nov 2022 08:41:37 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XToQPNKwvY0K3kr0c+zAdTSsR2fvzHZJxa8ryJtC8xFQ@mail.gmail.com>
Message-ID: <CAD=FV=XToQPNKwvY0K3kr0c+zAdTSsR2fvzHZJxa8ryJtC8xFQ@mail.gmail.com>
Subject: Re: [PATCH v2 14/18] arm64: dts: qcom: sc7280: Add compat qcom,mdss-dsi-ctrl-sc7280
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, quic_mkrishn@quicinc.com,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Nov 7, 2022 at 3:57 PM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Add silicon specific compatible qcom,mdss-dsi-ctrl-sc7280 to the
> mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
> for sc7280 against the yaml documentation.
>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Sibi Sankar <sibis@codeaurora.org>
> Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
