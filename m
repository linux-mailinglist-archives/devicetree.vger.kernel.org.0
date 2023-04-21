Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67F246EA5FC
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 10:38:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjDUIiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 04:38:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbjDUIiL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 04:38:11 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3BCF7EE7
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:38:09 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-b992ed878ebso1230455276.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 01:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682066289; x=1684658289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Na+mhLlCZP4BYt7q+bkQvLPhWmuuQ6MH0k/Crose/0=;
        b=o/EKk3sjC92+m0clgEBPpTglulEDVrMenkttM9C0Sge1sKkbW7fnOoUxH5Sa1K66mO
         51FGwA96yHzSvunI7675/Ksjtfc4vf9N3ocoM+ANDleoPOufIFlc1vVg7lkoQFs4blyF
         +x9SZLzA+fNEiAFYdLWoCaCFxl9pQV2kw+B1dfxMhr/iEbhpcOC2WJthJIcRdcoolI7q
         UOfW9YnB5ULrS9QepBgYtvzjyRcpOShMubLqgwuteKvlYQdxNZ4C5HnjbeXDOcvhkfC0
         0SVsW42xcPSFWpraF/ARdeE7KczE/zh8r7YhxDVgGmSB5fAow2ZNMJIfdGLtcc40Mv6+
         Q20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682066289; x=1684658289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Na+mhLlCZP4BYt7q+bkQvLPhWmuuQ6MH0k/Crose/0=;
        b=IMjlPZadGXlY1p480yLjBEH9MfONEgFjpJjKb2IE9HTGiWQE+yVmNuRzQs/RzxtL9T
         yxXfeiEFqm/95JxCfBtIj0iN3WAWCUqMm5I3XIrmGll2JPENb/QYXCyCz1w/DopfH0fG
         wFX85LGv1M/CXBbQ7IekMTAsJ6chDhjT+nWGafodabWRVOLPKufJFkdfHKR7SUresGmY
         Co1HOdIZpghZolxWWQmX1YMfq7Zy/pOOX8pZ1xERHrgsQesTRzDTA26IUlytKp5lHfQH
         iQv2Nn6JlbJqgS3YBBZTgXOjP//G9Gwe4Ruzm7BwiXgTaie0rHIMVLP9fmUeR43YVG3e
         vZMw==
X-Gm-Message-State: AAQBX9eTUebfiL3CHE0+rQfgf+YSeds0kl7MBiyEvAGPcdDHZfJVG4be
        X8BSl9wGY0idWqx3VJpCick4F0a/vbbJNccqe8nNhw==
X-Google-Smtp-Source: AKy350ZE/0wxNoQSE2KS3FY23vGXEFddblhhoDADF08iPkctflkmc0uTDpm56sQpI8oiVEWuPEnqA1BOSsEaj9xoB2o=
X-Received: by 2002:a0d:d68d:0:b0:54f:9b37:c1af with SMTP id
 y135-20020a0dd68d000000b0054f9b37c1afmr1454890ywd.1.1682066288945; Fri, 21
 Apr 2023 01:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230417061337.6552-1-quic_devipriy@quicinc.com>
In-Reply-To: <20230417061337.6552-1-quic_devipriy@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 21 Apr 2023 10:37:57 +0200
Message-ID: <CACRpkdabXUHUcE3Aq=t1ixYVvXWptnet1mqarLv7aK9CRAx3Gw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom: Add few missing functions
To:     Devi Priya <quic_devipriy@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 17, 2023 at 8:14=E2=80=AFAM Devi Priya <quic_devipriy@quicinc.c=
om> wrote:

> Added the missing functions cri_trng2, gpio and removed the
> duplicate entry qdss_tracedata_b
>
> Fixes: 5b63ccb69ee8 ("dt-bindings: pinctrl: qcom: Add support for IPQ9574=
")
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>

Patch applied.

Yours,
Linus Walleij
