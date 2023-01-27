Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17F6E67DF82
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 09:51:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232509AbjA0IvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 03:51:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232525AbjA0IvD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 03:51:03 -0500
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E79A21F932
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:51:00 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-4fd37a1551cso57812147b3.13
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ust5T1dOQ0zL+HLLGTDn3zdUYMh/5770ZElRgQ3sPDg=;
        b=obzjvlT1y9jt6kSminE3izVC8zsG+ufoMFpKAz7oy4XW4QKmvCOTcTHXpYMVmCmgdx
         fWsV39ysAELR3n/hY0ldJBfN5QUGlIpo1YvPn0O3IUMBLAQ8gycCUwKtgOJYneCL2kpB
         n6kkcVRyGl3ystC0vK5VQb9YZpsfYah8wElQpMH5ZoQw9lMipH4AWZ+yuEC2LEcnq+U6
         sH1blQqVQU790uWxsio6IAePBfsKDhlgmQtTGXjBwQjTwkwvoSifmup3B+6NntVoovoH
         K6PtteRwWGzWKmqKkMSV7uFK+0ubQthmhBIwC3dkdhda/yxh9gcWLRo+yAQuEr86HRiZ
         bXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ust5T1dOQ0zL+HLLGTDn3zdUYMh/5770ZElRgQ3sPDg=;
        b=17bSmKgGf9v+VIDsqD0fSdRXy6lyFcsIsS/RO3k3zAQc5H/LnVdhwEk+EbO6rXHcZ6
         nKzyViwBt2h/zxMIgShVnZxjaosH2XICqwgl2Rhga3ftlWMErqPpafM0NksaFcodKFgO
         9Ko9JhOiA1MGAiRFXNpYgKlDFK+zL7yrTG2N4dY4rbC91tiE66H+GoPmbCpW2H6pkUKj
         +a/FVlWbzJ770hbvlf28kKBuXSqRNQyxiSqV3sezVms3PebQze6pXcZMzdHHVNq7PfH7
         dPjMYAU0e7zSHzR0ERa7quZbDtuqnawG65xfUPm3hUdliROS4KbpGvMUTxzRuCi9eEVE
         tLFg==
X-Gm-Message-State: AFqh2krvU+EgnO1b840ZOInnZ9qY8MsNIPqZVSXwCYZO3H09nW3QL86N
        VImE9fi/MLGv2nV/5OG/Pq8A1HnmVCcfYDYyaoJpPA==
X-Google-Smtp-Source: AMrXdXsm/Hv7McSrHeZXMfE8TeNjNxQAnkGxQwfCfkr1WBI7rjZDVKp4ILbZt75wR8jNHQ/kqB6Fpz/eHIeitvmf610=
X-Received: by 2002:a81:6842:0:b0:4ff:e4bc:b56f with SMTP id
 d63-20020a816842000000b004ffe4bcb56fmr3524838ywc.488.1674809460124; Fri, 27
 Jan 2023 00:51:00 -0800 (PST)
MIME-Version: 1.0
References: <20230124141541.8290-1-quic_devipriy@quicinc.com> <20230124141541.8290-7-quic_devipriy@quicinc.com>
In-Reply-To: <20230124141541.8290-7-quic_devipriy@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 09:50:49 +0100
Message-ID: <CACRpkdZTMdK06jfuydwSpwMXLAeoL45EL4z2Msn-po+MjUZxNA@mail.gmail.com>
Subject: Re: [PATCH V1 6/8] dt-bindings: mmc: sdhci-msm: Document the IPQ9574 compatible
To:     devi priya <quic_devipriy@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        shawnguo@kernel.org, arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, tdas@codeaurora.org, bhupesh.sharma@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_srichara@quicinc.com,
        quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com, quic_poovendh@quicinc.com
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

On Tue, Jan 24, 2023 at 3:17 PM devi priya <quic_devipriy@quicinc.com> wrote:

> Document the compatible for SDHCI on IPQ9574.
>
> Signed-off-by: devi priya <quic_devipriy@quicinc.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
