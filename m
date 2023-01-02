Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E229465B5AE
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 18:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236528AbjABRLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 12:11:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236603AbjABRLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 12:11:07 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B628638C
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 09:11:01 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id u204so24885087oib.7
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 09:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fkrlTW01QZiW+rfRh4HCDBkrk4FHHNPvdhykJiEQI9E=;
        b=PSrfo52rXafgrME6wfouzPUZakPSi4zMi0esKLyfcUTdw3ZaLwczE7cqwq4+MAKDTp
         OPl7k/UcH/KvwiuB2Ijya3ZTt/RKJkdMX+lFk1LSSQFO/zSpVva0jt/XMT+DFhJyXmtv
         Dlg+29EtE39mSsu0+YR5gcVXPIgrI3oD6ZWMXHSW6Ja0FiNjgFuWd/WMvpBPRYm+Y2/M
         58YQCvE3Lxv7wYTUSWuWAcFMnMtr18bpUR8C+elEZ83RfcTyOs+rzRY011f1EPN5s+pi
         XWz0wLru8QmRF8N+6vF7Vn/3sS3eBC51zuFFPivBzOGyGSRasKOasO1UrkShD5TdzviP
         m9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fkrlTW01QZiW+rfRh4HCDBkrk4FHHNPvdhykJiEQI9E=;
        b=sKwIoHpCdpIYAMXnHc1wodVA3hfRzoKfrv67ls6MgzLNK9RkSyF3V9E43yQLcl4UPP
         8a6Qfa+yr/dx83tJrEymoNztsuLAx8jBtOma3LH4phg1lVe/86dBXhiY0qdfxJxd+Hwm
         HEVPl/s8CscROe4go6yuXXOpysqCkzjRD8bSlX0Z1Dl/9kx3qpYjEX5qp8wDClHBeVGt
         osIQVgaoGjAry6I2r3vWX+caP5knUnGT2DEV7NG7/OJ7ccIu22eiiSRhBJP5CAXMAPiD
         040mOnH36obuaPjFSjzU4IKwx0k31k29VJmOUh+OLKMx4PC+RaVsGuQjjrDN81XjZG47
         EsSg==
X-Gm-Message-State: AFqh2krTUW6hSFm0e7avmrzNbuGOxTuogNmEC92jh0c+oPCOhM4fvoN7
        QFpLjZ/8G2d6GjBDN6kdiBYuAbLbXxNuYfBlThd4Jg==
X-Google-Smtp-Source: AMrXdXudAWzRSkReGXrlA2k8y1GjMgzJ0Sqz2gL9E0bvitUpLzt30zx7sw5KpOjYmAMpIKholY97galZNRmQhhE4MY4=
X-Received: by 2002:a05:6808:3090:b0:35e:5a1b:825c with SMTP id
 bl16-20020a056808309000b0035e5a1b825cmr2536418oib.155.1672679460249; Mon, 02
 Jan 2023 09:11:00 -0800 (PST)
MIME-Version: 1.0
References: <20221230153554.105856-1-robert.foss@linaro.org>
 <20221230153554.105856-9-robert.foss@linaro.org> <deb17787-1a5a-89a3-3ecf-7690b4149f5c@linaro.org>
In-Reply-To: <deb17787-1a5a-89a3-3ecf-7690b4149f5c@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 2 Jan 2023 18:10:49 +0100
Message-ID: <CAG3jFysU84LRcqQOspub+9vtsP3syiksrGX6D7i3ff+X6+mbTA@mail.gmail.com>
Subject: Re: [PATCH v4 08/11] arm64: dts: qcom: sm8350: Use 2 interconnect cells
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        quic_jesszhan@quicinc.com,
        angelogioacchino.delregno@somainline.org, loic.poulain@linaro.org,
        vkoul@kernel.org, a39.skl@gmail.com, quic_khsieh@quicinc.com,
        quic_vpolimer@quicinc.com, swboyd@chromium.org,
        dianders@chromium.org, liushixin2@huawei.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
        vinod.koul@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>
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

On Fri, 30 Dec 2022 at 17:12, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/12/2022 16:35, Robert Foss wrote:
> > Use two interconnect cells in order to optionally
> > support a path tag.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++++++--------------
> >  1 file changed, 14 insertions(+), 14 deletions(-)
> >
>
> I think you need to rebase to include:
> https://lore.kernel.org/all/167233461761.1099840.5517525898039031248.b4-ty@kernel.org/

Ah, I see. Functionally I seemed to do fine without those commits.

>
> On which tree/revision did you base this?

msm/drm-msm-display-for-6.2

>
> Best regards,
> Krzysztof
>
