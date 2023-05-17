Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 170A2706DB6
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 18:12:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbjEQQML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 12:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbjEQQMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 12:12:10 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC5A618E
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 09:12:08 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2502f2854b2so211019a91.0
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 09:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684339928; x=1686931928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVR94kxf1clYzcJ4fp0jCloix0aQfZY3EqXNWwNKOks=;
        b=UaqAHC/mMJsApBK211+7ZcIdS+M/0pzqe3D2gkJvnQyy0KQQc/E0DQtR+nENbT+FVw
         d9DrjU/7JjjDK/56zIJU733sZiBURi0nxxvzl5AsWJnG7I/KOzAdty6GiWxvnyoEJi1a
         JKgqI5+SEOjhLoD1nWjqAK19YHpzSA8H/MsaCKTDAmyms1NCxNpwUz7iYsZmRj3jZMAt
         qU2x3ZYOEDyjUNpJaI7pS3U4SfdTR9sI3EMUxqDQPaEoXgzxCnZiVzs3MJ2YPctYlvNV
         MQp4ks7I1rnLbnZHFP4pPxJDbpXqtMqcUwnbLvl2ESpHXg1RngJwlGysrqnxyHE3fQDD
         UHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684339928; x=1686931928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kVR94kxf1clYzcJ4fp0jCloix0aQfZY3EqXNWwNKOks=;
        b=AWuz+KJbMHHQIqA2hOe7ZuPxe2dg99lsjKpzHkMjOEwcncQQWBTjwfwlT4Eo68yaoE
         HrR02ZIlo5ABkcxcWiL3+KXV6H2h5t/vF0RdhPJHw4NuezOCfHCw1mbyamC4d06jLf+Q
         Z6xDM3qZ1O6JF5nLp2B5JNuGRxs2cfX8iFnEHsBGHcZcngPFvCowYg/ZwrBiV8/Z+9p0
         1YplNlB2af5tk+YzfNeQS/VVu3Yh8q5FsElDTn4N9HumKPJk2SihGHPrmPn6FAQE1k5x
         DawvzvLuGr7HnZRroxQL/dP/+Cb07zvHisQaE9e1oQsZOZqaUD8Vv3QcuVKuCKyLM9oo
         HPDQ==
X-Gm-Message-State: AC+VfDyhoYYF/rPqsVw6GuPI9BTL0QKCjrBrBv9HJ9tAeOFzPDyOIjMy
        cYgZZ6Okiuh9mUMsLEgUcht297+gz/yMekor3s259zvZJ0g=
X-Google-Smtp-Source: ACHHUZ4RNj6D8++Db3J1u664nVktSsN/kygU+dAai3TruNVjwa+LRVDa4CatTLuND3FF5uDF3o2oUuC1F9x6p2WoD5M=
X-Received: by 2002:a17:90b:3b43:b0:250:9af3:4f89 with SMTP id
 ot3-20020a17090b3b4300b002509af34f89mr3932593pjb.4.1684339928220; Wed, 17 May
 2023 09:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230517160840.1862018-1-shenwei.wang@nxp.com>
In-Reply-To: <20230517160840.1862018-1-shenwei.wang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 17 May 2023 13:11:56 -0300
Message-ID: <CAOMZO5DfBtE6qn0Pt7AkJMZRoo4n9mpH_TYZmf3wJknKecNMGw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx: correct GPIOs for USDHC2 CD and WP signals
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
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

Hi Shenwei,

On Wed, May 17, 2023 at 1:08=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.com>=
 wrote:
>
> The USDHC2 CD and WP sginal should be on LSIO_GPIO5.
>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

In the Subject line, please put "imx8qm-mek" instead of "imx".

What about adding a Fixes tag so that this can be backported to stable kern=
els?
