Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70A496E9A8C
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 19:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjDTRUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 13:20:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbjDTRUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 13:20:46 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21BD23AA6
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:33 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id j15so2674216ybl.10
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682011231; x=1684603231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npIvl3QgC8NcszelNQAZW8/zRVotzvOXnUNhHUMiAZ8=;
        b=Y4lxgJ8dXJFv6D8mG0p63NO1+LiD8itf6x/IdvAfy49o4anv6IxZjJ27+tMOkiH+s4
         wB4iRiyjVT5WojC/IMdUYWMbnFcAiwKjAyCphylzb60vXOxANHZkIK5apN9UeDiSvPO/
         D/ROpxIVKlTozwIBNBdMlraSUw+Y8AL1VFndk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682011231; x=1684603231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npIvl3QgC8NcszelNQAZW8/zRVotzvOXnUNhHUMiAZ8=;
        b=APrRSIl2JoKbZFomSfM/hX6Y/Np0DW5qIp6dOep3vUGqPZ7kYXuNCVjMM+/yoNNgGV
         Rv5X1D2e82AAjiPeRimokW6vNquhGEE2wI8y/ixO8qtApHLQ4+eiWFzdTxtz9AFUmkPx
         gSev4bC+d71IL0ccRReLSzbbQsz/agRaCMWXoLOjw7atbIfLIV++6fmGQJREIuhVm6EF
         I1tf3WphMI8SanGDehiBCn8YRgUR1L1RWBpO8D9RtqMEfVbEiH6fcdBb3x0qjKS/2W1j
         0llt2IAXwIXyfyyrLjW82V90U6vCLYUApJJYHF1VW6JMCP0CSL4e2FwanR5YI8RflRVp
         qmFA==
X-Gm-Message-State: AAQBX9cTNkxpLyDG74OVdk5RkaJoZC//8rkiBmEu+dfm++ln50brTsVv
        F0cjHu1qFEVT6kKgFB21WAt0EHCwLduSLW+GBSs=
X-Google-Smtp-Source: AKy350Yx78wO6cR8Dopl5CWlwD9Gy3tkyh8ScsJWb0wIYfuX4WLiqYIbVGZEXispgctriANaTyaGeg==
X-Received: by 2002:a25:5c7:0:b0:b95:78ba:a39 with SMTP id 190-20020a2505c7000000b00b9578ba0a39mr2429262ybf.37.1682011231720;
        Thu, 20 Apr 2023 10:20:31 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id h204-20020a256cd5000000b00b7b0aba5cccsm409865ybc.22.2023.04.20.10.20.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 10:20:29 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id u13so2742408ybu.5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:28 -0700 (PDT)
X-Received: by 2002:a25:cacc:0:b0:b98:6352:be17 with SMTP id
 a195-20020a25cacc000000b00b986352be17mr882764ybg.0.1682011227804; Thu, 20 Apr
 2023 10:20:27 -0700 (PDT)
MIME-Version: 1.0
References: <1681996394-13099-1-git-send-email-quic_vnivarth@quicinc.com> <1681996394-13099-3-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1681996394-13099-3-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Apr 2023 10:20:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WyVRxRc7WuW1vhFXWDG81cAu7g5WiC9sggGoEuQOA4Cw@mail.gmail.com>
Message-ID: <CAD=FV=WyVRxRc7WuW1vhFXWDG81cAu7g5WiC9sggGoEuQOA4Cw@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] arm64: dts: qcom: sc7180: Add stream-id of qspi to iommus
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 20, 2023 at 6:13=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> As part of DMA mode support to qspi driver.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
