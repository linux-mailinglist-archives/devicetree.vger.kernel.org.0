Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97FAC77075C
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 19:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbjHDR44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 13:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbjHDR4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 13:56:55 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 705184C04
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 10:56:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0092F620DF
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 17:56:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D83C433D9
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691171813;
        bh=GKuYHb+Bw9ERBeGoytIUGt9ZgJZFMEWqi4zEEosvufo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WFvBPqPKRBGLuR/OEsLkTMoftJc23oukOMuLFCcNYMERhBOfwI87v2GIr2xMUspGj
         W2l947w+c+bTWwVg0oJgXk++I6whNCT5zs+SncV9l53HlPsrrSrBlGXEt4dFLYkT8v
         YQ3w7VIn5zwIc4NrTqnhXjME/6ru41GlPkh1wUCjOzjcOF3Tg6Y53O3OxjZUzTOJi4
         usBx625bI7TgwkeVSM5XhzhuGeyGHdnwArnXUd6DzDf78R6b9SKJYFhgHVfywF0B9J
         USsKCr7c1n5zCFVFECoCRjub8sRqSu7/h2iv/ryrFrURHi3lvNleNADmyGfu7PUokI
         1wGBSAj30Xw/A==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4fe45da0a89so4261169e87.1
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 10:56:53 -0700 (PDT)
X-Gm-Message-State: AOJu0YxtTp0N17l5s6GaNUUnW60QjJm7Mcr+YvcpcVMo429YXTPYHXWD
        tMceebmfEYPyIP8VnBX5fKcL/WRE488n26u4Fw==
X-Google-Smtp-Source: AGHT+IH7fMb9Z6cQ3aYYpjloEdM4PzkFPO+YGk3G+U637LHZIPsqMU7IUBz9IA+tIyA3w6sNG/0Ti8YWQGTVGeisS8s=
X-Received: by 2002:a05:6512:4020:b0:4f8:7041:e46a with SMTP id
 br32-20020a056512402000b004f87041e46amr94034lfb.18.1691171811335; Fri, 04 Aug
 2023 10:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <87mt04o96f.wl-kuninori.morimoto.gx@renesas.com>
 <87351wo921.wl-kuninori.morimoto.gx@renesas.com> <20230710151956.GA1992791-robh@kernel.org>
 <87lefn8gh9.wl-kuninori.morimoto.gx@renesas.com> <20230714144245.GA3492124-robh@kernel.org>
 <87zg3rxymj.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87zg3rxymj.wl-kuninori.morimoto.gx@renesas.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 4 Aug 2023 11:56:39 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+mTbi-Xmaw_ScMs6zzBCGnZM2cn70HCP-On9TjevE1xg@mail.gmail.com>
Message-ID: <CAL_Jsq+mTbi-Xmaw_ScMs6zzBCGnZM2cn70HCP-On9TjevE1xg@mail.gmail.com>
Subject: Re: [PATCH v2 14/15] ASoC: dt-bindings: renesas,rsnd.yaml: add common port-def
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Cezary Rojewski <cezary.rojewski@intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        =?UTF-8?B?QW1hZGV1c3ogU8WCYXdpxYRza2k=?= 
        <amadeuszx.slawinski@linux.intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 19, 2023 at 5:36=E2=80=AFPM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Rob, Mark
>
> > > > > diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd=
.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > > > index 8a821dec9526..d9808b130e8d 100644
> > > > > --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > > > +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > > > @@ -9,6 +9,20 @@ title: Renesas R-Car Sound Driver
> > > > >  maintainers:
> > > > >    - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > > >
> > > > > +definitions:
> > > >
> > > > $defs
> > >
> > > Hmm... many drivers are using "definitions" ?
> >
> > Patches welcome to change them. I don't think it's many (not counting
> > types.yaml). Use of "definitions" or "$defs" is an exception.
>
> I will get error if I used "$defs" instead of "definitions", like below.

Are you sure you used $defs?

> There is no error in "definitions" case.
>
> Mark
> Thus, I have no update for remainings (=3D [11/15] - [15/15]).
>
>
>         > pip3 list | grep jsonschema
>         jsonschema                     4.17.0
>         > pip3 list | grep dtschema
>         dtschema                       2023.6.1
>
>         > make dtbs_check DT_SCHEMA_FILES=3DDocumentation/devicetree/bind=
ings/sound/renesas,rsnd.yaml
>           LINT    Documentation/devicetree/bindings
>           CHKDT   Documentation/devicetree/bindings/processed-schema.json
>         /opt/disk_cd/morimoto/linux/Documentation/devicetree/bindings/sou=
nd/renesas,rsnd.yaml:
>         Unresolvable JSON pointer: 'definitions/port-def'

Doesn't look like it. You have a ref to 'definitions/port-def'.

Rob
