Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F41956EB2B6
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 21:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232177AbjDUT7i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 15:59:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233316AbjDUT7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 15:59:37 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C13230CB
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 12:59:17 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-3ef64d8b2b4so935631cf.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 12:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682107153; x=1684699153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vBre5fsrHS4I/dOXAuC6wKXt3u1wPU7nSBfX39Vpgro=;
        b=RHmheudwWn/wGaTUEZ2e6TTyl3bOLnwx5lWk8TWepg3A043FnprhA8Bvtd/wgRgH+V
         tyPZDt7b6mJR+jsH485SPl3BfHwD1bJsHUkdGzBeD5xj3h/yVqIR4XpOphjdFVQPrkKS
         wDTXvJyHDDWbAW4fH1AsiyYKfIsXPSVhNgE30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682107153; x=1684699153;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBre5fsrHS4I/dOXAuC6wKXt3u1wPU7nSBfX39Vpgro=;
        b=Ss9SG94OLnlHeBGVp3abfNDns9Ze133O3xF70tGWPztGf63hzf4s+VsmmMJWvwqP/5
         H6UAv99xtUfKrzj77ymxt7XcADYipDnsFSjRoyjhWzddDEkcHZrFH+w+TdLEBSOeV9hV
         6ywQtCoPYrxM6IGTPYiVSF5wLp1ozaoleYekLdH0J6cdEtzToNV6ZMYsDD1YYutw0VBZ
         NsWs1TSsmjLvv1wqzNfRC5EsdTGP9fAscQHK3mv5u+Vz36MGS0NZ8bCULJGNFPrBt9Q2
         jtgVzUNC2IsAdAIZhyGNQYcJMdaU4RfPZze7nF4brpn4tefDC+8WuvKNr83/S7MwEELq
         Bjkw==
X-Gm-Message-State: AAQBX9e0KVxE6P+6v1r7K3ESyDg2VxI+aC/5zhNaso9DNcOpyhPVrAAU
        9Ngfhv5TAFeKamdtEAD7qmllefrRxiIFejV0Kho=
X-Google-Smtp-Source: AKy350a1Dg79TG8CRScDb41allKNDp/MZAUqYnNdZeIsaPCQ4oMyzRBykaVk8Syf3ieNomu3u194nw==
X-Received: by 2002:ac8:5e0d:0:b0:3ef:3edb:7676 with SMTP id h13-20020ac85e0d000000b003ef3edb7676mr10701607qtx.61.1682107152816;
        Fri, 21 Apr 2023 12:59:12 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id cf23-20020a05622a401700b003ef58044a4bsm1225229qtb.34.2023.04.21.12.59.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 12:59:11 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-3e0965f70ecso1232221cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 12:59:10 -0700 (PDT)
X-Received: by 2002:a05:622a:5ca:b0:3ef:330c:8f9e with SMTP id
 d10-20020a05622a05ca00b003ef330c8f9emr64749qtb.10.1682107150378; Fri, 21 Apr
 2023 12:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <1681996394-13099-1-git-send-email-quic_vnivarth@quicinc.com>
 <1681996394-13099-6-git-send-email-quic_vnivarth@quicinc.com>
 <CAD=FV=VU9Zdk2wz=90cjmuBWxaVz9w+UxzrTtW_ny-jrwVLV3w@mail.gmail.com>
 <7a6fe89b-5898-08d3-6c44-2cfc9d8fae7a@quicinc.com> <CAD=FV=U_7t4H9nXy6Ku49qLqbhZ02K-_XQv_Ssgkp26s3LyDMw@mail.gmail.com>
 <166aa490-f217-7dd8-0152-1d216deb2805@quicinc.com>
In-Reply-To: <166aa490-f217-7dd8-0152-1d216deb2805@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 21 Apr 2023 12:58:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wt2VWSkSq2FzbtXBrkS06hwizkKMjkgwgKFqAHmcmyNQ@mail.gmail.com>
Message-ID: <CAD=FV=Wt2VWSkSq2FzbtXBrkS06hwizkKMjkgwgKFqAHmcmyNQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] spi: spi-qcom-qspi: Add DMA mode support
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 21, 2023 at 11:21=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> >> If we were to have a linked list of descriptors that we can parse and
> >> free, it would require 2 more fields
> >>
> >> this_descriptor_dma - dma address of the current descriptor
> > Isn't that exactly the same value as "data_address"? Sure,
> > "data_address" is a u32 and the DMA address is 64-bits, but elsewhere
> > in the code you already rely on the fact that the upper bits of the
> > DMA address are 0 when you do:
>
>
> No; data_address is the dma_address mapped to the xfer buffer.
>
> This is provided by spi framework and retrieved from sgl.
>
> "this_descriptor" would be the dma_address of the current cmd_descriptor.
>
> this is returned from dma_pool_alloc()
>
> this would be required for freeing.

Oh! Of course, that's right. So you are correct, you'd need to add
"this_descriptor_dma", but not the virtual address since that would be
the same as the address of the structure via the list_node_t. I guess
I won't insist on using a linked list even though it seems more
elegant to me. In the very least it should fall back to PIO if the
array isn't enough and if we need to change it later we always can.

-Doug
