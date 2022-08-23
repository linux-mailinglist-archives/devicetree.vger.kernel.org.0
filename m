Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3109659CF7E
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 05:27:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240103AbiHWD0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 23:26:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240090AbiHWD0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 23:26:43 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25B705C9ED
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:26:42 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id a133so6806877oif.4
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc;
        bh=Gsyyrjom5d3tsO/Xn15lmH603RwdhQ72lNUI35huiTM=;
        b=mjwiSApllSKwDPCczr3uydgvyvX2wS8lxJEu/gwgp9tVZydQYGWkhlHuAci4uuyoGZ
         CgLVt4nCJxtQOokPMdKkIFNr7AiudAgAyT8VdaZYMtmFkiy86b8516vNxEf5mkehGOW/
         eNRNr4Z5ZBcB1E27dxPG/ixvt4JUx1B8Kj9E8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Gsyyrjom5d3tsO/Xn15lmH603RwdhQ72lNUI35huiTM=;
        b=qubbcW+Tq/D+ZhA02QAcP21Zfl9HdaKLdM4LE61vDOnBXoaP+nUOlDl7FnCiRIX/S4
         CTOqF7liwL/7hW2d3DUF65DpYEwCXJ+fhroin45zm2x90AnyXwGVUe5n5Bt8LzAsVPLX
         mFmCCzq2+1jWJh8R3WHhVdHln/kiGx7/TNf14tHFFXlg2KLJi1a1i8WCR3ka60BWIyRE
         W9EUk+vl5UAnq9GtvqiJAZb/lbR78p5MUWzH0ZJ7M8fXWBevlSS1+fckWEWHbiyMFjTS
         423F5rQqk+GyuwPOxPjmMyRX+Ptf7EVOuN+fvBRviq2UpV0SVeQL2q6wdN5QnM6J+9C8
         rz/Q==
X-Gm-Message-State: ACgBeo3HZrwwShVP+tjHS9MUveHBINynEKSwDMarsUiCstmdYqh2zNy0
        LJHC2GBlh9NYPrKofI9p1yUo+lMlOmKHw7y6/059Nw==
X-Google-Smtp-Source: AA6agR60jN8ObvTbkxkB8864F0EhQ2EF92dgEFyCliL7GRPJViDGWxMtWGk0qX37sw5x/kn+Cgzh4TP8P9upti0JHsA=
X-Received: by 2002:a05:6808:1142:b0:343:86a0:dedc with SMTP id
 u2-20020a056808114200b0034386a0dedcmr546934oiu.44.1661225201548; Mon, 22 Aug
 2022 20:26:41 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 22:26:41 -0500
MIME-Version: 1.0
In-Reply-To: <1661156523-22611-8-git-send-email-quic_srivasam@quicinc.com>
References: <1661156523-22611-1-git-send-email-quic_srivasam@quicinc.com> <1661156523-22611-8-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 22:26:41 -0500
Message-ID: <CAE-0n53Lm37zcBAKqTVDHGvHDjDSDDd=Ct-b-XZOBOg=7gU5KQ@mail.gmail.com>
Subject: Re: [RESEND v5 7/7] remoteproc: qcom: Update QDSP6 out-of-reset
 timeout value
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-08-22 01:22:03)
> Update QDSP6 out-of-reset timeout value to 1 second, as sometimes
> ADSP boot failing on SC7280 based platforms with existing value.
> Also add few micro seconds sleep after enabling boot core
> start register.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
