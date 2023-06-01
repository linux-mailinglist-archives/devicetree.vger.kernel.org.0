Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2C2171A34E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:54:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233553AbjFAPyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233972AbjFAPy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:54:29 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81289134
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:54:27 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-33baee0235cso126925ab.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685634867; x=1688226867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p75d/9vAo2QmHGYASe5pVB3mdXeN7tpGcCzjSSNDwCI=;
        b=pB2M88fOWegLHbbo1d+tMCHh0Boi8N2ckCUoAxS2KH2mN6q2UpN0q7c4qh5+XGI80C
         H98XGitwXYrWwX3tP0U5fCD5ZJgw1EG383lnBtrI8+PCIbqwXll5D7emj6m/M5ZioT/l
         3vcpowBllTwJKTvCLOGwWEs6ZTEULLFRbzQx0+5pxfx7DOyM1sNXYYJehlRpBfYRQG4s
         I5AYAnJ4VFup/fHUgNH9srrsXEVLLg9iDyeZJjhAgDDibGre1hYWgycudLgYvaQPP/sv
         Ol4u1sfVJLUPLLXBGJCDQuxNem5gS3HrF4ttA4WEziqc8/wvs7YLa1pKxaN7W+F+HmAA
         Yu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634867; x=1688226867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p75d/9vAo2QmHGYASe5pVB3mdXeN7tpGcCzjSSNDwCI=;
        b=jHV1uEJxOmLC6z/PF0YxtD03bnZYtuOSg9dfROeyhD0tUyQq+T9mYwZY4hHF+XJGX7
         B8rfZX3uMhFwRo/RAml8tBMk4+FtnaewYXgIEpJyuGq5RuZBGZ1R3XuVccf4N5TGMLsZ
         jr9bH9ORkcBJ5NjqrnVEGGzJW/Si3oXHA0D6VlWSblGCPeDZGqiY5umHBvHYRw6oXkt5
         XPw5M5Eoda7aX/+eBq1F/JvpGQs7wesbXcRk+/oE7xAsj2LnjErdS1WKUgpVLkRow1/2
         sAkRBY4ecnES4Wd0BZN3JB8RM36lUEnx3CQNDkpvQxfimbB92J1+P0amZYOKvoonCZ3h
         1Q5A==
X-Gm-Message-State: AC+VfDx5KPAwWnAuOiFl1eJJ3O6f4e0zQtLuntZBnMtFJeMXM9UJ5mBz
        z34/sKVsB1P+MYhiiMnOX4DvrMxkSlbXl4qaf/mIM7aEmQvOk5+NU4aChg==
X-Google-Smtp-Source: ACHHUZ5iIWwTojAZAR2RN0XWGD2cCzkBc04L8Zy4/yB6TmM0Xtt7GPFCebiEEi/Bni+lRbbzZA73dV+y0VMVs4Z+V+c=
X-Received: by 2002:a92:c261:0:b0:33b:4805:7333 with SMTP id
 h1-20020a92c261000000b0033b48057333mr212113ild.26.1685634866619; Thu, 01 Jun
 2023 08:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org> <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 1 Jun 2023 08:54:15 -0700
Message-ID: <CAD=FV=VsaiWVfyMhXavE8zRgCRnDdtYDUMZrp--3BKnJNWbk4A@mail.gmail.com>
Subject: Re: [v4 0/4] Support Starry-himax83102-j02 and Starry-ili9882t TDDI
 MIPI-DSI panel
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
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 25, 2023 at 2:32=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Copare V3:Resend without Conor's acks on patches 2 and 4.
>
> Cong Yang (4):
>   dt-bindings: display: panel: Add compatible for Starry himax83102-j02
>   drm/panel: Support for Starry-himax83102-j02 TDDI MIPI-DSI panel
>   dt-bindings: display: panel: Add compatible for Starry ili9882t
>   drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
>
>  .../display/panel/boe,tv101wum-nl6.yaml       |   4 +
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 471 ++++++++++++++++++
>  2 files changed, 475 insertions(+)

For future reference: please don't send your patch series
"In-Reply-To" the previous version (or in In-Reply-To anything). This
messes up a bunch of threading and generally people don't like it. No
need to resend this patch series.
