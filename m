Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD4E71A35C
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234528AbjFAP4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234534AbjFAP4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:56:06 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4E8DE5F
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:55:45 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-33baee0235cso127135ab.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685634945; x=1688226945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uApS0AB+KUqwH2mw5UL4mdLHnyPDTmyOVgSJDqeRPaQ=;
        b=y5BR8FXbezVtxErlOjqqGKRAJTB9J95itZDa1tseyYftY+Gf+XQYKzD6KoEck/jdkm
         ZoVNis5cPOexjakvLKY0EI0DTbikKPDl/ZvtfWU0hB1daeDRS/YaWkVaQh2w0xvJ4gY6
         gvH9dprFwLSDJvPpwl5n+zwlY/nOsSaB1cNUm1eQFdyst8KAOKXO1134VXhEyflY3diV
         vAi+Zy4KmyqfJRSL3IjspIlKYXZqZWH9MmnR5xCHGrCtt9bTUU6M2BjBKOjmW3lCrGJU
         90ceMJys0Gy5NH6i0WEsvfkhtVgG73mUwRCA5wsCXldA5sTjObwnSXgm+NCoUqFGty9X
         eZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634945; x=1688226945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uApS0AB+KUqwH2mw5UL4mdLHnyPDTmyOVgSJDqeRPaQ=;
        b=Dw+xoLOEhs8Fa7CIyTdU8AJHU3ni8uLFuVnf9/BnXKZd2qlRXhEA8qfIWv0IFZKSfP
         mV1lWOAGL+1MPl9NFg7B/O29ZS4oaFCU/iuoZwktQv4g8E3I04mS2pbIZ4eAZmTDpMDG
         3DduFUlTCUT+somFDd80mviOkiQXL7CJ4jLugtKV7h4XemGorJqfnIsWtSoC7DD05xkM
         q0n4+NeVWBBpg0so5Aqtp1OuBe3QQTIqJ2JhqzELbg7kdW8n846Iwnhe/amQYW1XNtO4
         rYvuNGAJu5/6b39McSEEtTyxhLW4HAyfWG/G+ua9OqZHH+dNuGpZNAlVBq7Tw5cg7qnn
         tmmg==
X-Gm-Message-State: AC+VfDy+ommBq+tMRMWBcWaDWSLYe9byReWfSitPjg5t1T9LywnPZVta
        ZZ67WB+l2NE8UWpQaEvAUCj/yNBc2Kg1rDYFi2Ghig==
X-Google-Smtp-Source: ACHHUZ5fq3JioldW7xhRbYNQAjKs/px/pm2qGdKgn4OzPmtAXvaz+G27ZQEqZ03qI2j8UCtxfAZGvE6m8QXSxh0qHiM=
X-Received: by 2002:a05:6e02:1a01:b0:320:9759:bf6b with SMTP id
 s1-20020a056e021a0100b003209759bf6bmr186805ild.3.1685634944981; Thu, 01 Jun
 2023 08:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com> <20230525093151.2338370-5-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230525093151.2338370-5-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 1 Jun 2023 08:55:33 -0700
Message-ID: <CAD=FV=W_Vw=WTuap60PtzU8Jc58T1PsEhJfY96NmFFgmC1DB9w@mail.gmail.com>
Subject: Re: [v4 4/4] drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     daniel@ffwll.ch, neil.armstrong@linaro.org, sam@ravnborg.org,
        airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 25, 2023 at 2:32=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The Starry-ili9882 is a 10.51" WUXGA TFT panel. which fits in nicely with
> the existing panel-boe-tv101wum-nl6 driver. From the datasheet,MIPI need
> to keep the LP11 state before the lcm_reset pin is pulled high. So add
> lp11_before_reset flag.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 371 ++++++++++++++++++
>  1 file changed, 371 insertions(+)

Applied to drm-misc-next:

8716a6473e6c drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
