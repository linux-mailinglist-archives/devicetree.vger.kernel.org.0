Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03AAA5B51B2
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 00:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbiIKW5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 18:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbiIKW5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 18:57:14 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E260221E16
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:57:12 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-127d10b4f19so18979511fac.9
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date;
        bh=pVS7bTONLkZB3+cDrU8TPMMOnP+Z4vmVq9BPhDF4ly4=;
        b=L5yOeUqc2rtJy2Lee262h1//ZOpxGCQKa1YIzyiaDjObJsUY3dG0q3Y4PTk6VRl1lP
         +KinOOuiAy3wCGHamWeC0rNY4rIzzKr4RyTjs0q643DO8zqlideTQzVYzVEYbvO4Lboq
         ftpXb8AZE1g49+iprxzizCxoj5qJBIIAL+CHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=pVS7bTONLkZB3+cDrU8TPMMOnP+Z4vmVq9BPhDF4ly4=;
        b=7KVzDbgsxMEzT/f1riJJaqP94sjFHztftbof277/OeqAszqbFLGEHXw3UOKtlDpoi/
         fjeQp4ySLRd5ozy5pjkbrJzGjx1tSM+r1uLooUgemF64SHqWSiZMK5fJmVE1z7GsS0sM
         UubbvuThJdhpdnr4GkK0zUeuXh8yljadK3et/+Kus7Q29WcRMv6U8PgJFdoTYbcm/Zu3
         SRkdlasui9v+HM1yqXxd8P+iJXeO3Bi7322k2lzBqB8cqh6RvdaOaLUHkufAnwsTYsmA
         TP+fqT6/XwUYvidCCgRItKnBz8QisFUpcpnNDI9dD/WBeWPORmbciskYkafQptpUGIDY
         ApIA==
X-Gm-Message-State: ACgBeo3GEvR30rBMnmUA4X8gO4qJQh6J13iQ0N7r+xkrO/txoG+12CBh
        xMgQ+2k8bKuE3rg6O+6s08NpDmdJAkA6rP73EGoPhQ==
X-Google-Smtp-Source: AA6agR7Gknt665dcjQGkcGHk1lrhFk+/hwDPLVqBvqwsv4VUJpmZ6ZfUing+21n82woe2ytImsGVHGiVUyZIogehABc=
X-Received: by 2002:a05:6871:6a1:b0:127:3a21:7e00 with SMTP id
 l33-20020a05687106a100b001273a217e00mr10579741oao.44.1662937032318; Sun, 11
 Sep 2022 15:57:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 11 Sep 2022 17:57:11 -0500
MIME-Version: 1.0
In-Reply-To: <1662643422-14909-7-git-send-email-quic_srivasam@quicinc.com>
References: <1662643422-14909-1-git-send-email-quic_srivasam@quicinc.com> <1662643422-14909-7-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sun, 11 Sep 2022 17:57:11 -0500
Message-ID: <CAE-0n53xOdgbPcsQr40N0HbCaC7gpM=QLByoUh1qhQ-=PzA90Q@mail.gmail.com>
Subject: Re: [PATCH v6 6/8] remoteproc: qcom: Add efuse evb selection control
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

Quoting Srinivasa Rao Mandadapu (2022-09-08 06:23:40)
> Add efuse evb selection control and enable it for starting ADSP.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
