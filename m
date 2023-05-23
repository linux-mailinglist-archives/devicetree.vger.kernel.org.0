Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0A9670DBA7
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 13:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236562AbjEWLoQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 07:44:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230197AbjEWLoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 07:44:15 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A91118
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 04:44:14 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-253310a0df7so1235735a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 04:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684842254; x=1687434254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WgX/r1B3pMpzOmIX6NMla1EhLvohMfnJsvToLfi7Lwk=;
        b=FsWMVU82S9OnVWwrFeg5kRr2xWdLsT0w37IVzw5oH+AOGGputS1jjqFxxGHCaTNQWA
         k7p6sds1PizXgpZ1opmxEO1llZRTr5e9hx+orSg/g8z/ORKyvSE8FC+KKhpmhx2QnrSj
         gNcEch1TEKf6PklqmWgJaegUw/VWw4u0NslAX0pgz4Cg+v8+lnQWRgwDGS6p+KB2wSb8
         FISLg9/agaJeIXP4rWicSq6C8NAZnnNV4G5sMK7XZSL3QpfEmW3twhWofhPJNZHYhl91
         WnjdIFXeaQx+ZC6zgDKADS3uV1/o3iJVQaEHqW96PvVeBBVxp6uCTLT6sJt6WrLxUyOk
         unBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684842254; x=1687434254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WgX/r1B3pMpzOmIX6NMla1EhLvohMfnJsvToLfi7Lwk=;
        b=ddTSQWpem6DBnVfPFTA9O4kbIRiAgcCB0dfcfMm9S3fVXZHQO+PReTGZGtSGt18nKp
         pVcHTa+kYrLSgI7ETTe04p6t526wYv1qp3zS2gxTVMJL670KeDdLhtjBJoQnuW4/mx/X
         gKIRlJi+YmldBwlj1CZwbJq3o7sIFu9jJFR7KkhGS2ybRhLOaUPKaQsd5VLcmcXASWun
         T9B+Ve5Nloe0DOziY2iEkYxn8wRd0rDRaA46OnT/+pEAtpGhJm0hm7R4uoU2nzMcYNJ5
         eLRNwt9w3/r9RAEbJ1Fnase8BzwsLl70WaV5hn3AysNCWxyCMIDoKLHNjrSF7bUzu3t5
         CJPw==
X-Gm-Message-State: AC+VfDz8n7GRWZQ0pDqEJO2TfS4MQiB4mb2Tamp7wx8KZDB3yHRprlfw
        /asE83HoWBXl9qrwkjYexhmGxDUaqjP5jNGx8IE=
X-Google-Smtp-Source: ACHHUZ5nHmr8GQAm2S3apQNHb55pQTJbDCxdbdfabNvHv/2DSOlaLqqXJf9FfRwygHWptKJXBtZvpSMLilObqRi7MAk=
X-Received: by 2002:a17:90b:390a:b0:255:582b:d4e4 with SMTP id
 ob10-20020a17090b390a00b00255582bd4e4mr8769382pjb.0.1684842253767; Tue, 23
 May 2023 04:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-5-festevam@gmail.com>
 <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de>
In-Reply-To: <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 23 May 2023 08:44:01 -0300
Message-ID: <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
To:     Marek Vasut <marex@denx.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 22, 2023 at 11:57=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> I feel inclined to ask -- do you think this could be something which
> could be added to core code ? It seems very generic.
>
> Thoughts ?

Yes, I think I can work on a more generic solution after this series gets i=
n.

Just wanted to avoid it as a hard requirement right now, if you agree.
