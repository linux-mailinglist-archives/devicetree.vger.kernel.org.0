Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA06D718D91
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 23:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbjEaVwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 17:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjEaVwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 17:52:38 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4286B139
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 14:52:30 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-62613b2c8b7so2372246d6.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 14:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685569949; x=1688161949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T92knqTOJA3pNeL2xlDEkRB2bYKP1xzPES6uIiXRZts=;
        b=OgZjm6DTmdA+u8Iwl7PlhU2MafHB8KBpEP8mAKyTuliVApbXWjPM4bvlIp+Oy7Alpn
         iEfd9tgO5nKB4gzldXR2ed5gAX//KR+bo6ifAD00u7FhgLLTvYrAfnTgorIBwKPZ2Jiu
         rL43t5oE5YIN9EPXZViEZXdPgSZtArSg8MrXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685569949; x=1688161949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T92knqTOJA3pNeL2xlDEkRB2bYKP1xzPES6uIiXRZts=;
        b=RWf088bNSSNpk3lIXBauccvEVaawtEtNU4OKMRkB/Sq0Tulzg5cHpAYRSZFbdjk0Uf
         pFPB3SIoIKilTJEItQdTc062kcoqAiC7+XyS9xmlxfGsofOwf9YHLQPHnKOFDhe4QhC2
         flFjusJiXTIH08vXnjUME/Ba3p5A1k4En1qRG//HBE1A7ftnwCGhnydl4EBLsF8k2qm+
         /zGDZFMKXmwtXy1z+QZ1KIRI5kdPAE+Mzc77b6GmJ4/zRVlMZsrKQNY562N2G6evi9aX
         KHP/iPnvRof9Yz7EJviZUn35HTBk5Q+oTwpw4epW5TGMqPsab9hgvsJjVHvtlU8MmVsC
         N1Nw==
X-Gm-Message-State: AC+VfDzanjRYHYz/UaI+9ZqpU7R/MpJ+QvEappy74zc9gn+8++qxBHVY
        Nx4WJfHzv6iwyiICfeys8Sp5RVcsS2UwV0SI+2w=
X-Google-Smtp-Source: ACHHUZ7f27E3RY2dm404ErK3aRKxALJK0PRL8Hf8YKNexp6RBfy49Vp0AF1TjW8Q3EA18mv/WnJcMg==
X-Received: by 2002:a05:6214:528a:b0:625:aa49:c344 with SMTP id kj10-20020a056214528a00b00625aa49c344mr8058603qvb.56.1685569949088;
        Wed, 31 May 2023 14:52:29 -0700 (PDT)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com. [209.85.160.178])
        by smtp.gmail.com with ESMTPSA id y2-20020a0ce802000000b006255bcfca88sm2968762qvn.7.2023.05.31.14.52.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 14:52:28 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3f6a6e9d90dso79541cf.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 14:52:28 -0700 (PDT)
X-Received: by 2002:a05:6e02:188f:b0:33b:cea:ce70 with SMTP id
 o15-20020a056e02188f00b0033b0ceace70mr8358ilu.25.1685569520353; Wed, 31 May
 2023 14:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230531-topic-rsc-v1-0-b4a985f57b8b@linaro.org> <f5875c10-21c1-43b6-4ce6-25b968588412@linaro.org>
In-Reply-To: <f5875c10-21c1-43b6-4ce6-25b968588412@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 31 May 2023 14:45:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Um8U2MQsrv+ngQg_h-aQMi5_yy6Lrj3ovr7eV1PC+Wnw@mail.gmail.com>
Message-ID: <CAD=FV=Um8U2MQsrv+ngQg_h-aQMi5_yy6Lrj3ovr7eV1PC+Wnw@mail.gmail.com>
Subject: Re: [PATCH 0/8] Flush RSC votes properly on more RPMh platforms
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Lina Iyer <ilina@codeaurora.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Gross <andy.gross@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 31, 2023 at 7:26=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> On 31.05.2023 15:22, Konrad Dybcio wrote:
> > As pointed out in [1], the Linux implementation of RSC basically requir=
es
> > (even if not explicitly) that we point it to a power domain which
> > represents the power state of the CPUs. In an effort to fulfill that
> > requirement, make it required in bindings and hook it up on all platfor=
ms
> > where I was able to do. This means all RPMh platforms, except
> >
> > - SC7180
> > - SC7280
> > - SA8775
> >
> > As there wasn't an idle-states setup (which may be on purpose for CrOS
> > devices, certainly not for Windows SC7[12]80s) that I could validate.
> > (Doug, Bartosz, could you guys look into your respective platforms of
> > interest here?)
> >
> > This series also adds support for idle states on SM6350, as I was able
> > to add and test that.
> I noticed that 7280 is WIP:
>
> https://lore.kernel.org/lkml/20230424110933.3908-4-quic_mkshah@quicinc.co=
m/

Right. For sc7180 Chromebooks we don't use OSI (OS Initiated) mode but
instead use PC (Platform Coordinated) mode. As I understand it, that
means we take a different path through all this stuff.

That being said, in the sc7280 thread you pointed at, Bjorn and Ulf
said that we could use the new device tree snippets for sc7280 even
before the ATF update. If I'm reading the thread correctly and the
same applies to sc7180:

1. New DT plus firmware that doesn't support OSI - OK
2. New DT plus firmware that supports OSI - OK after code changes
3. Old DT plus firmware that doesn't support OSI - OK
4. Old DT plus firmware that supports OSI - Not OK

For sc7180 Chromebooks we'll never have firmware that supports OSI.
That means that, assuming I'm understanding correctly, we actually
could move the DT to represent things the new way. Presumably this
would be important for sc7180 devices that originally shipped with
Windows (I think support for one of these is underway).

-Doug
