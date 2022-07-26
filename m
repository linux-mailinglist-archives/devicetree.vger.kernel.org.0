Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73656581B34
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:41:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238984AbiGZUlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239207AbiGZUld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:41:33 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1809837F98
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:32 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id m7so11916283qkk.6
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jeFixDPfE71QMWfSEPLhQ0hQsRonHTELVwxWS7yvUS0=;
        b=S+jU8whJE0OvzGwWSxD5K+sb9CCgpxmMPNl3HkH9OF5g+tDFnVlXt5BLvj8e84b3Qe
         5S6vZn70agIERKmCx6f0GW88foe8CyXNQIRXMlFBIL3h4B6yTXI01h459azQgealo8H4
         Leh/QJZDIT/tCyFzWGInBK7PgoMYtzL5V5Xs8Af6DLJNA1sU5FlOhnl2QsS99r28yt4T
         +Rz/xGsA6poNidUpQcScZh9XrgGitcZcW1yCH/Dtct9CtYzuYD7m2A+R3P1D1v2hEGkk
         fUVZGtOByijdRka3XQGtreGsRwNg4/NVSmy5AwkRX0CGSSxt750ezLbZuCAqMfGfxo+1
         MaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jeFixDPfE71QMWfSEPLhQ0hQsRonHTELVwxWS7yvUS0=;
        b=uwLCD6OERSEoMj+VHCMTHhmFkrnZ+svYG51THC9kzAJBXrH7mrF64jRyNrADzRYH/5
         7yCTfhUj+U8Vj4AINifzdCjSiEyztWSrHWlhEZz0mz/dj6BE6CAf9JTMxbrf0g9Nuv2R
         sgSr6WRnFQugSq4xLHi4bHN2iAscKSBMSjNG+COpTb5M6nuHQkPNn1OXmSLxwtxjrMpK
         6zw3G4e+Fv5G7w78DZWx0yJYVocAA0spD3TEYgcyHk9vSJFGCK8Grkx1YKB/9xhT3w2c
         VPWuASTUQ8EyqiGQBOmYhbN9xT04m/+l1Ume1u1qBEyn3ZgMz6Lqe9ek1V3G+N8MOGKQ
         YjiQ==
X-Gm-Message-State: AJIora+jJThwgku+An6W1MtdstzQfQ23f26uGqIXtcTlBWdRF+klZNjM
        evMY5kN07Io1Zyi9zotrrO+QSxTP/T4oLrpBpFEFOw==
X-Google-Smtp-Source: AGRyM1ugGeT6HXgm2s+CocGaha1OabRyGGWhYG97BOhDTu1yl9LfJKCkKayV4hqWRGe4iSsuMxMlD26zXuCNKOjEhKk=
X-Received: by 2002:a05:620a:4305:b0:6a9:3829:c03 with SMTP id
 u5-20020a05620a430500b006a938290c03mr13519778qko.363.1658868091261; Tue, 26
 Jul 2022 13:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220726181133.3262695-1-iskren.chernev@gmail.com> <20220726181133.3262695-5-iskren.chernev@gmail.com>
In-Reply-To: <20220726181133.3262695-5-iskren.chernev@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 26 Jul 2022 23:41:20 +0300
Message-ID: <CAA8EJprtwN8OJAuM7XwTAWWBa2y71T4AmZxb+5TUnRdvZvnQTA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] regulator: qcom_spmi: Add PM6125 PMIC support
To:     Iskren Chernev <iskren.chernev@gmail.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Adam Skladowski <a39.skl@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Jul 2022 at 21:11, Iskren Chernev <iskren.chernev@gmail.com> wrote:
>
> Add pm6125 regulators and their sources in the QCom SPMI driver.
>
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>

Please fix the order of sign-offs.

With that fixed:
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
