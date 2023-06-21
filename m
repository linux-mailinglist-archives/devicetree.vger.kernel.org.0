Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32E77738C6D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 18:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230115AbjFUQ4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 12:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229978AbjFUQ4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 12:56:51 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF6DA1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:56:50 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5187aa18410so6624040a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687366608; x=1689958608;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBrF3iaP3Fd6iHn8cw7cCxGg4FZTsp6oWE22ClcY7C8=;
        b=cKhePLXwx6t0hrmDLcxb9ENEo0aFMmx0Sw8StfTjt+rKzM2XM9CZz9rwpm52Jj9pQg
         n1P82I5VZj8I5F83Be1tPIFYy4yQzx95MEw0CMUZ1GPBA7DzYOGC1s/CtnMx30D5vttf
         qiXtqIObkE6v+TPp6CBr7j4Mqcgy1GunKv9sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687366608; x=1689958608;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBrF3iaP3Fd6iHn8cw7cCxGg4FZTsp6oWE22ClcY7C8=;
        b=EQqj166dHHAEoFY00OYnZKW4uXtV2KKn2TQYf5f+VYWZDayZ1WYGD2B0qpC1Ho8Woz
         5CLXW2yyLKYPo73xvcCwB1Er/1BvnI9pjvVtNywLCf2KLB3hDF1Z1QCBGKMN302vOzql
         5asBJhqms/Yz5FH8UfwQyqN2/wAUUdmCNf2Rc2R0DQvRnj1m12tZnNYr2dvaJIArrcYT
         elYoAliCaMdNHH2ZXpJ09SSujuSOKKCckU2qQoDU/jiZS+Zk46xPv8JDmxcYyj3kG2/t
         jWBaScMW0z21qOHnVZJXfaf+334YxWz17y2/UeLVOM6kyC1hFp66XwbUDtnbFX64vJwV
         QYsg==
X-Gm-Message-State: AC+VfDwwh7mRyTKO5AKS4Njg6USFibpg2dbfWAEi24bJ3+ga6wfkpKvj
        3CYAtmJOAW9vSWHpLbTml1IuX53bewNYnB6P1UsTGJe9
X-Google-Smtp-Source: ACHHUZ5yDqpIGjTeo276HzNTCAIRFNFn/XhEpjMQyjRt69HJABnivflmfv9ysV6QoqVNpERcnSkiHA==
X-Received: by 2002:a50:ec84:0:b0:51a:46e1:541c with SMTP id e4-20020a50ec84000000b0051a46e1541cmr9297242edr.8.1687366608174;
        Wed, 21 Jun 2023 09:56:48 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id s6-20020a056402014600b0051bdf152295sm868732edu.76.2023.06.21.09.56.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 09:56:48 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-3f9b4b286aaso7465e9.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:56:48 -0700 (PDT)
X-Received: by 2002:a50:9e65:0:b0:51a:2012:5b34 with SMTP id
 z92-20020a509e65000000b0051a20125b34mr630898ede.4.1687366587250; Wed, 21 Jun
 2023 09:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230616081440.v2.1.Ie79b5f0ed45739695c9970df121e11d724909157@changeid>
In-Reply-To: <20230616081440.v2.1.Ie79b5f0ed45739695c9970df121e11d724909157@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 21 Jun 2023 09:56:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WqirzpMwq8wto2B9cDGVf5JfirAQRargKWcZLpFhXCVA@mail.gmail.com>
Message-ID: <CAD=FV=WqirzpMwq8wto2B9cDGVf5JfirAQRargKWcZLpFhXCVA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: firmware: qcom,scm: Document that SCM
 can be dma-coherent
To:     andersson@kernel.org, SoC Team <soc@kernel.org>
Cc:     amit.pundir@linaro.org, Will Deacon <will@kernel.org>,
        sumit.semwal@linaro.org, linux-arm-msm@vger.kernel.org,
        konrad.dybcio@somainline.org, linux-arm-kernel@lists.infradead.org,
        Stephan Gerhold <stephan@gerhold.net>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Nikita Travkin <nikita@trvn.ru>,
        Stephen Boyd <swboyd@chromium.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Fri, Jun 16, 2023 at 8:18=E2=80=AFAM Douglas Anderson <dianders@chromium=
.org> wrote:
>
> Trogdor devices use firmware backed by TF-A instead of Qualcomm's
> normal TZ. On TF-A we end up mapping memory as cacheable. Specifically,
> you can see in Trogdor's TF-A code [1] in qti_sip_mem_assign() that we
> call qti_mmap_add_dynamic_region() with MT_RO_DATA. This translates
> down to MT_MEMORY instead of MT_NON_CACHEABLE or MT_DEVICE.
>
> Let's allow devices like trogdor to be described properly by allowing
> "dma-coherent" in the SCM node.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - Bindings change new for v2.
>
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Without this series v6.4 will have a regression where WiFi / LTE won't
work at all on trogdor devices. Any chance you can send up a "Fixes"
pull request with the 4 patches in it? ...or I could try to convince
someone on the SoC tree to land them directly?

Thanks!

-Doug
