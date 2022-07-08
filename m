Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C13E956B002
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 03:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236703AbiGHBef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 21:34:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236611AbiGHBee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 21:34:34 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1475F72EF4
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 18:34:34 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id w62so3837390oie.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 18:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=TQpl5B+0hWufVFjVqqJcq4KlF7PnqVm/SI/AJ6WncfM=;
        b=SpXjqtfNgTrQWcax3vJDG2y9BzLbH/0KkJT+pWMYKethklQEnaTEPShccD5cvWLHPg
         QJg1dgZfhZInlscmdV2+fz/uMpvzt6FxpmFcHdu5JgJg0cVhh4LLEINtpWo+PukPsTC0
         eO9TuwKtBmwWjXpnI2SxFAr+0QhbCp0ai+dR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=TQpl5B+0hWufVFjVqqJcq4KlF7PnqVm/SI/AJ6WncfM=;
        b=Hod+Jcw5GtfzOkO2Vs2qN2C5dUgN5w1xyKErR+tYRvky0BiMkh0BncYO0NfknvwuIj
         ZJ9hEveLnquV5zi2trp5ilCabLsLNZNRwuxyv/3960LFA+0pOTkNraygvccgC9XDrpgk
         5yWE6SED3U0WQwPos0EwRNfazGMEXMTZFPmMLISbIh+B3g5YuXP1iprJdLXs/NeVezZD
         zocrBe4rygXsAtCA40qCDjDPOpWuVdvnUFWOsfU6hpNSROjMdooaClHow/d4R3BDeEot
         2fkcMgsRgiI+lhX5gs/50iz9LOMiueTm23ACVNRVhrp9uGPc7/ts08Ka/E9ZHPycJcFI
         hWWg==
X-Gm-Message-State: AJIora8KIR4Lqb94704xNbyEkyLD1LkVEE7yNlUbX5XBRY9Sps9cwu+K
        CZdQuLC0PGipr8whiBs9om1fuvxjSF1mwQ2JazPN6IR7Auw=
X-Google-Smtp-Source: AGRyM1tTsAzOgDKcA9SVpIMxetlrFugPxbCIiIKPc6PvKc5O2dFGuLHvqmrSiLVP09rpp9TI8YtG5hoeWDuMH6201ug=
X-Received: by 2002:a05:6808:e87:b0:32e:4789:d2c with SMTP id
 k7-20020a0568080e8700b0032e47890d2cmr466507oil.193.1657244073489; Thu, 07 Jul
 2022 18:34:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Jul 2022 18:34:33 -0700
MIME-Version: 1.0
In-Reply-To: <20220707213204.2605816-9-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org> <20220707213204.2605816-9-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Jul 2022 18:34:33 -0700
Message-ID: <CAE-0n52g1z3tgoeD6QziNNfVz7XSMswWEFLmJHtZ+mkQO-J6ZQ@mail.gmail.com>
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sc7280: drop #clock-cells from displayport-controller
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
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-07-07 14:32:03)
> Drop #clock-cells from DP device node. It is a leftover from the times
> before splitting the it into controller and PHY devices. Now clocks are
> provided by the PHY, while the controller doesn't provide any clocks.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Same "the it" comment.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
