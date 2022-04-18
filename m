Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05C2C505E60
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 21:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347646AbiDRTXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 15:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347642AbiDRTXS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 15:23:18 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3DA1E3C0
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 12:20:38 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-e5c42b6e31so5223397fac.12
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 12:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=cV6+6Ey7LaeWZPNbriTRkorx1rxnHKeq4jFNbHhfmco=;
        b=RfDcx726fSOkgilqjNNFdffOGia7ENNZq4jw6/IpNvYS2X96nsaU6+CizR0R0lVpip
         8XykJfQitz8Tf+qkrUP2a8h38iE5MNquXTF+M+ZfjDZxGruX0RF3tzwfYMTFDUujup9v
         vn+q0L54b59gb0Tdjc5oAILmSZnZrXXSh+Oi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=cV6+6Ey7LaeWZPNbriTRkorx1rxnHKeq4jFNbHhfmco=;
        b=v0A+SH5lBin9iJkEihCeAyB1Jn8Mcf8hObhkzFasC4oj8MKeHgslmq4+uGQCuw8nDi
         n57q1bG12BtOR2mwBQbtdPsq57IDoPNcRpHFB8dczwlE+wgAonkmeHdtPyV02qhvrl0/
         plEUebk1pBV+Fjfc9tos5NdYJtJ3ZHolmqZBUtD1xMNyzYmw0p4u58p5VpfeAlf00Irh
         ySmr0dmvnKC4gpocUC+pj+TV5M+BOwJxo116zX6Ew5nJw/rSros8xqeyVap5ctlACvye
         JLL+4VQra9qbOeuE/gK1COzCz5eL4Do1if7+f639HBvyyXGnKmlyqY+i5XeSuTdM0o6L
         lGZg==
X-Gm-Message-State: AOAM5305H97IoJ2Oq8xsx3+mK+adtCkGCLc+kxcqlcNHHjjT9Ol1jcz4
        epND4QG/ChT1yIoht1R2gnNHGHIhlJAct6sQaUczWw==
X-Google-Smtp-Source: ABdhPJzNf95/lk0150+WJSd18uvW1W5pdHmDXYK3zhdw8hZZpUZtdsFX7flLJWCbzkVJnlE9bwIuyJ0EGf7AjX1fhe8=
X-Received: by 2002:a05:6870:3907:b0:e5:a6fd:4047 with SMTP id
 b7-20020a056870390700b000e5a6fd4047mr4742504oap.193.1650309637020; Mon, 18
 Apr 2022 12:20:37 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 18 Apr 2022 12:20:36 -0700
MIME-Version: 1.0
In-Reply-To: <1650285427-19752-8-git-send-email-quic_srivasam@quicinc.com>
References: <1650285427-19752-1-git-send-email-quic_srivasam@quicinc.com> <1650285427-19752-8-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 18 Apr 2022 12:20:36 -0700
Message-ID: <CAE-0n523c+X__wJwy=7e7WXGY3Crimne1-yUHM3Txf81n+bBVA@mail.gmail.com>
Subject: Re: [PATCH v13 7/7] pinctrl: qcom: Update clock voting as optional
To:     Linus Walleij <linus.walleij@linaro.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@quicinc.com, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, perex@perex.cz,
        quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-04-18 05:37:07)
> Update bulk clock voting to optional voting as ADSP bypass platform doesn't
> need macro and decodec clocks, as these macro and dcodec GDSC switches are
> maintained as power domains and operated from lpass clock drivers.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
