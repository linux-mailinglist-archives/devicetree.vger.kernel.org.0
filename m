Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6E371A35E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234391AbjFAPzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233546AbjFAPzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:55:45 -0400
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71EA319A
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:55:37 -0700 (PDT)
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-33bf12b5fb5so130355ab.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685634937; x=1688226937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJnr0nAI79FbGcEzwusG2c1oxXOAZlwGtMuVl8TkMiU=;
        b=F5ig9ehUjDqdxIKiSKJHREsI10xOX38A0QXUHK8VNB5hnRo7A4nuB5c1oqPzQ7C4m4
         esj2spCXlIiXTwhCAdjn/TSxlJceR8dNBjfDTN2T1dVO9wYHIm37J8f/tTZB/uoenLG9
         mfP5FfovaPngf3Zli2QGTeNbKETa4l+SzSPA/GvBYfYSuWeQ8m3K2E5R6Q2j7VIC5ooW
         O06ZajcRKWL3YyiO5uwDYngWTnziiJHwoPbu9Xd0X0HqWf4ZaBiWR8YQeJs13RWyiqhK
         Z8hilvcXYi/HQuMJpB/R55TCMNXCy1zoUAtvSGLNuzQggGw56C1pHpfTCmcCKl35QoTl
         kiQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634937; x=1688226937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJnr0nAI79FbGcEzwusG2c1oxXOAZlwGtMuVl8TkMiU=;
        b=bpLW4uqYVc5oWIZbC6eBQ5RKqqGwA2+0dDMU2OwU/lYFWF8sqSo35VEH2Zby/eVZwO
         doj2PyaoJGqjPSYv70K0tx67zCxONwAHdn3VFckv56Kpozbr+/g6Y14bh9NpJMNQyUjW
         Cz7P1aUl2WhAdo8CdnoEwW19omsNa77+N/ctnQgi8xIheQF0JxSHkoYuc/Nr5DTSiuhm
         nrYT8T+jNjhJwPlqw9WJQpLosGhjoEv8P3DB7ZL3gJtIwARp9PWvI//KNZjzUOxSxZZm
         Rq6KJhkZsnmGNzE3P16xbyi9rPf/NmVEct1Ojc87f0gRizagzf3QktrPkhw2UWecdnBn
         th/g==
X-Gm-Message-State: AC+VfDwxqlFxrSvrec8+Blr5GIPJJGWrnLdAaNThnOzeZowtuGQQ05rd
        +s2wpBnWFrMFjyS2Om9zr0D2s3fQbCCW7VAQqxiO/g==
X-Google-Smtp-Source: ACHHUZ5M77PykdR9xQv90jShpkPZX5SDCZzIQ6mgVZzgThumvHXN/x1LRc07L7DTNmktmo0tu9ZbvFJsmNSZXID1HUg=
X-Received: by 2002:a05:6e02:1a25:b0:33b:4a8c:2147 with SMTP id
 g5-20020a056e021a2500b0033b4a8c2147mr261587ile.8.1685634936701; Thu, 01 Jun
 2023 08:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com> <20230525093151.2338370-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230525093151.2338370-4-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 1 Jun 2023 08:55:25 -0700
Message-ID: <CAD=FV=VxQcoYpE4OJYB9JVbiOQVUi_bkDzynR=VVfuNb4eQB9Q@mail.gmail.com>
Subject: Re: [v4 3/4] dt-bindings: display: panel: Add compatible for Starry ili9882t
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     daniel@ffwll.ch, neil.armstrong@linaro.org, sam@ravnborg.org,
        airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
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
> The STARRY ili9882t is a 10.51" WUXGA TFT LCD panel,
> which fits in nicely with the existing panel-boe-tv101wum-nl6
> driver. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
>  1 file changed, 2 insertions(+)

Applied to drm-misc-next:

0a73471ca1f7 dt-bindings: display: panel: Add compatible for Starry ili9882=
t
