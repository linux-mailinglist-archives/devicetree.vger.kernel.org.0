Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8145071A360
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233723AbjFAPzR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:55:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233857AbjFAPzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:55:16 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B146137
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:55:14 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-33bf12b5fb5so130245ab.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685634913; x=1688226913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bcFHd8KydoGNMakaE+r7qYK2+GReJfjjugBl3aXp89w=;
        b=SL4pYfDecbcOQkLFjRrzaszytlRsjWKv7TXKTPpEmnZ9TgXq7iMK+eafFvYnAdwqyf
         khkp8jY4HdOj858ecpc//lBwBZQ9HaDdJDXhMGcv3+TX+3Pb6JgkQjZ3inwHO7oc4Jwg
         AuWqT/OtAdR2BnrbPMjpEVG2O99/JKUdiCG9MIUGtw/Sa+gGMeIY9QX5pOZQ4+qKKGJE
         /A0xipy6hgP60ktzPzZC2X6LVAFHEhVPZlFSMYOvtg4GHPxZFNCBSk/rkGu9smkfEVUX
         HfDzMvEKffXF7ZdX/cjhRyfz4m++ppbKQAKiHMYcAjEsA9goCz5oPxHRi4K0a45a6ogR
         8Z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634913; x=1688226913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bcFHd8KydoGNMakaE+r7qYK2+GReJfjjugBl3aXp89w=;
        b=Cya/WIqqYVRvmsj7U0d5cZZObWXn+YBeeOiOKrbtdoVJdpj0beHehRCe7oiDhEjNJ5
         5yRTmyumK5TYfpnsujO5oB3cFHEoe0K1cTFQk8TbSUEgC1e4Rjot7fdZ6MvVy5wzL/lY
         4GCaNqM381yJxno6kP3Of6aG7Em6rmSbXk5hBZK28GEjDoX9gOnsUrskpY2eQMP0oz+y
         8Px4Ho1BrF5i4Pe2tS9WMhF8wiT7AwdgDa4Ug3VpcH3EdfTEODVU7R8bYmEPBM9H9tQE
         rwXRrZpqX6yfEUmaGwHxZ6wL5XT3g+z2xQ37ZfKpoQbIg77e3QOQeI0VRWkbfisEjgvB
         HIRA==
X-Gm-Message-State: AC+VfDzdj3SxjBuSKI62+f+3nqUkdgRjUi4XYiAg6riSqJPVBQcNwnMA
        /lYfEr5I4jwFaqMr9Xjx0WgNCWSAPwImY9Txfnk58Q==
X-Google-Smtp-Source: ACHHUZ5tNrISHWhGI3VKmvsVJdzk5rApIA+ScRjMOFK6/ERy49AFcEHGdmb5Lbwbk7kHe7mdIy4KMUAybF/WWAmQhng=
X-Received: by 2002:a05:6e02:b2c:b0:32a:642d:2a13 with SMTP id
 e12-20020a056e020b2c00b0032a642d2a13mr248297ilu.6.1685634913599; Thu, 01 Jun
 2023 08:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com> <20230525093151.2338370-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230525093151.2338370-2-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 1 Jun 2023 08:55:02 -0700
Message-ID: <CAD=FV=UduUjeG0ZPFm6QMpRE0+wJpbwTue9xprSTd2fPK2oyZA@mail.gmail.com>
Subject: Re: [v4 1/4] dt-bindings: display: panel: Add compatible for Starry himax83102-j02
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
> The STARRY himax83102-j02 is a 10.51" WUXGA TFT LCD panel,
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

06c3269cd574 dt-bindings: display: panel: Add compatible for Starry
himax83102-j02
