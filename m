Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B566553AA0
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 21:33:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353951AbiFUTdn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 15:33:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353502AbiFUTdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 15:33:42 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 070721FCEB
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 12:33:41 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id p31so21910488qvp.5
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 12:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qaXL7s//rVlnXZvWoUbeILDkx4WluVd6U+rQ7ap3Bnk=;
        b=yP47wRsHGkiNU3IV7Dih1uaEcTaUBKR5kzfzkdP0X9LqiUqMe4ZR+rVfeTYijH+eHi
         40R4d1IPfEBNLqHQeANwLlnUb/Ds/M6WeXRq8e82mPd20In+a7ZmdIJT4UlWAFAhBwhQ
         aTCp0jY6LwR9kcy+nF4MTHyDS1NESUd8wMF9x8Gwv7++rsvrHpBgWauUVT90Jhi8fqTg
         s4rptHUaJtfeasJW6NwFD/m+nUBBe439/+oouQWQgeyJ5uwqDbFhal4VJCzSr92lr72V
         NxS9ahg82893Daal2Mcv+xvQpxZg8kfUysep/Gjr6uc1giBfDezbkA4p/jLaZGvt9ayq
         CzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qaXL7s//rVlnXZvWoUbeILDkx4WluVd6U+rQ7ap3Bnk=;
        b=NjHOnUQ6TWKhYeSW5MVKvLELPCqCJKXbG7IPjTU+XFXNDMS4/AsgzoIeXjFRBx2OrY
         ZpPzWGpkfaRyXrZSqtHst0cURleAuAYRhahjHrXAdIjIZVJXaGpWH9M7AcdjW1Tumg4I
         HCcQnct87XVTslXUv/TMnShAXnbwEpHUmQxkqDQAh8Z8G6Dd1IdiSWdPhMsLHxzUpXh2
         KVCuRjJkieMWEuw0ghBoDue1UIwC+gk0tfhU6xNshnt9HRHL7aVPYNGQgO88PHGgAamM
         YtsaOmGByff62jNTE2vjkeZfw1kUL/6aJwN9h/bTGb8zHX9bXznMYqOlPDfVafBNBq+Z
         Dm7A==
X-Gm-Message-State: AJIora9TZxo3ki4sftk03MBFoOpliZo8gRDXUxMAwsCPJePDOdpVvX9c
        vRrBIfpOQWj97v2DUvUcs25nC+nupKKYEZUka/2JVA==
X-Google-Smtp-Source: AGRyM1sS4Zs3vUyy3sj5jGfkZw3IH+lZcdapUzHfbkrrK5JAVMTxGbpJY5BEqB+0uClu8/Pfz//oVo9V/eqVPXL9kSM=
X-Received: by 2002:a05:6214:d8d:b0:464:51cc:a552 with SMTP id
 e13-20020a0562140d8d00b0046451cca552mr24582230qve.122.1655840020152; Tue, 21
 Jun 2022 12:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220621193020.1630180-1-robimarko@gmail.com> <20220621193020.1630180-3-robimarko@gmail.com>
In-Reply-To: <20220621193020.1630180-3-robimarko@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 21 Jun 2022 22:33:29 +0300
Message-ID: <CAA8EJprq9tt_i1ufjKKRbB=Fj28MDZB-rUnNfP9F9Qj_4S40Zg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Jun 2022 at 22:30, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> Gen2 one is already supported, so add the support for the Gen3 one.
> It uses the same register layout as IPQ6018.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> Changes in v3:
> * Remove parsing QMP pipe clock rate from DT, and instead use the rate
> as set in the PHY config
>
> Changes in v2:
> * Rebase onto next-20220621 to apply on the refactored driver
> * Remove non existant has_phy_com_ctrl and has_lane_rst

-- 
With best wishes
Dmitry
