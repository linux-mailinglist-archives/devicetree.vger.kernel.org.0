Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BD656F70B3
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 19:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbjEDRRk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 13:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230011AbjEDRRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 13:17:35 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5263255A3
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 10:17:28 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-2f7db354092so545987f8f.2
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 10:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683220647; x=1685812647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cesjGSXjro2rP21G4rfu9sFt4XxldgqoChhP56PAftQ=;
        b=bQdeDQMoqV7rN3vtRGhuybfgZUuJhgEUVdxXqmYM7fXnW2PqGNOgSJ5R6CMyD52tPv
         mCug7r5DbZYfxwOJtGTBXzqCbIs3ufbeU3rVJNAs5nJwu+7q4Xlp4VZfKOO4MS0A9Mxs
         Bg+8wmqHFB24tZgMY9WCZ7v8zSqMEi+bXRYOv9Kww/18HOBH64iwPFRXv31tq8IOMWVh
         l3LX663CNri3IIuBBsGdMoDaG2WBxJRpSp0o5f4tiPGbekCmb4FwJiWA3U5LAo7rf+Pc
         fsOdURUFTsmH2m188oxX65a/uWielZM7BHes83NUjeWRoRyALkL4xkmtuVR+V2+Sztb0
         mZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683220647; x=1685812647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cesjGSXjro2rP21G4rfu9sFt4XxldgqoChhP56PAftQ=;
        b=jSxigxP6iPnZl7IIh15Rld7gnPNArZIWp89leoGTBzDpwnHm+IVYOBB9iKZ9wqG0Uh
         hq+1TLvo3L3RYMr0P4bmabRk9acuaPij0tz2VAJ2S/mGnSOhLOZmu38twbqhJehrmOP9
         SBjAfZXfYiiqkFE6kLA5HrobBLhNXqWLNiDY1QaUJATeAKnw9Kqo67CekKv7mJpgbnJi
         DJ5Vrupycr3DDW1WNUfoPVaGxWQZPb+HT9AI34n8a7oU9dAX6SxCJLSNQnRpKY22ULYA
         hTZI6YAv9ktcDGkKBv4KxW74xRWmBjlOFSoMrtBjVfEjoV+aKjvouQbV9krxDQIoPirL
         pqTQ==
X-Gm-Message-State: AC+VfDzBNn7cjRZ9WG+EfsWgY4lJR2UfY7jzCOibh7t/4nP+mgQGg5HP
        gXcZYuSvf2sGfVy1rwVkSTWptWPdRKyKbOnYESkRww==
X-Google-Smtp-Source: ACHHUZ7NHJwYpkgXge7DBw6W2FOE8VnwhC47ZVAWC4H18sdpK0BPJ9hjuCVU4kLBbw7ShhCY+1y34VcTfC58/BaM5JU=
X-Received: by 2002:a5d:5447:0:b0:2f9:1224:2475 with SMTP id
 w7-20020a5d5447000000b002f912242475mr3184075wrv.68.1683220646768; Thu, 04 May
 2023 10:17:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230501105832.1185477-1-bhupesh.sharma@linaro.org>
 <20230501105832.1185477-2-bhupesh.sharma@linaro.org> <3b84361e-fba0-3551-be55-474495f02a01@linaro.org>
In-Reply-To: <3b84361e-fba0-3551-be55-474495f02a01@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Thu, 4 May 2023 22:47:15 +0530
Message-ID: <CAH=2Ntzk09vT===p0dd69RckDx_+2k_UPqd=YyagkJJhwfv-JQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: qrb4210-rb2: Add SD pinctrl states
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 May 2023 at 17:27, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 1.05.2023 12:58, Bhupesh Sharma wrote:
> > Add the default and sleep pinctrl states for SDHC1 & 2 controllers
> > on QRB4210 RB2 board.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > index dc80f0bca767..5a5294cc6e45 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > @@ -190,6 +190,10 @@ vreg_l24a_2p96: l24 {
> >  };
> >
> >  &sdhc_1 {
> > +     pinctrl-names = "default", "sleep";
> > +     pinctrl-0 = <&sdc1_state_on>;
> > +     pinctrl-1 = <&sdc1_state_off>;
> property-n
> property-names
>
> Other than that:
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Sure, let me fix this in v3.

Thanks,
Bhupesh
