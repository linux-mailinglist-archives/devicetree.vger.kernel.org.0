Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D58D76EAFBB
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 18:54:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233411AbjDUQyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 12:54:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233423AbjDUQx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 12:53:57 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28B6815A16
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:53:27 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-74de8faa412so122419585a.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682095924; x=1684687924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnl878ao3KfZM1Schc0iPqmLuMtCb4QrPUJTPEHHzyA=;
        b=Sdr6Dvoc/XHT+PqjiGl3rx+uMfzNNi8O+HpayUOhe8pFOq3uOT3ftrK9qxxNCJeiUT
         VXwu9DgNld1DFjhld22SR+4O+brNOtpGIuaomYbSadwaXtWSwr/7RBIgGgfKnucs0Kty
         1DmW//s/n4EM3kMN8zJe0PAV00j+Mpr3ZO13k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682095924; x=1684687924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnl878ao3KfZM1Schc0iPqmLuMtCb4QrPUJTPEHHzyA=;
        b=juwhPG8pxWoYovZacuUUyExV9HU2aEubTFAdEwyrFHaVPWBi6HrsN1i5PaG5tgIjOn
         FHrDBAt8Qp4PbspO7QghMGOpx7Wdt7vo6tdFSxZo0uehokPVVxZNn3BqWVK25gd0H8Ue
         cu27o2aIlWPgSWeabqihq4Gvjr74r9NIaju9BxrFxFNVboVyTSpiBx1Sk2vcg5l6v7zO
         YK/IrZ/EUIQDuUjRCvK5M0STSI5nfVIXSHTaDheTRqPCg8Y1j20sjQHNF2Stkhhxec3c
         xYkeGbf0NPkY5eZfac8avmdp1B4GG2Ouitu1pGCUKQLwY+irdoDb0jfMpBhIFjAlO5+x
         XEsA==
X-Gm-Message-State: AAQBX9chJ4kUq3VywNHN4Gt1OAxCERoZdx3nwIf3GBU5cdIslCwAHcZ8
        O3B6u47HTGFkVkqTGfsHaOhtmlJRGQNO2CyZLnc=
X-Google-Smtp-Source: AKy350YfyRP0SJd9aDYXALHj2p11qdp/57phit7g3siHGSIf6wG27HY7bBTYQ8DTxiUV3v0h4O+aQA==
X-Received: by 2002:a05:6214:29c6:b0:5e8:5167:e254 with SMTP id gh6-20020a05621429c600b005e85167e254mr7624471qvb.42.1682095924480;
        Fri, 21 Apr 2023 09:52:04 -0700 (PDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com. [209.85.160.175])
        by smtp.gmail.com with ESMTPSA id s38-20020a05622a1aa600b003e0945575dasm1454966qtc.1.2023.04.21.09.52.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:52:03 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-3e0965f70ecso1179751cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:52:03 -0700 (PDT)
X-Received: by 2002:ac8:5811:0:b0:3ee:d8fe:6f5c with SMTP id
 g17-20020ac85811000000b003eed8fe6f5cmr361276qtg.1.1682095922914; Fri, 21 Apr
 2023 09:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230201-innolux-g070ace-v2-0-2371e251dd40@skidata.com>
 <20230201-innolux-g070ace-v2-1-2371e251dd40@skidata.com> <CAD=FV=XJCtqep+92h3gLfs4o2TwvL4MORjc9ydTSpZiZ0dsR0w@mail.gmail.com>
 <fb93e95f-181f-917d-9216-a81dec1a2959@linaro.org> <CAD=FV=Vs8UEfBZ56fYb3i1cmFbCSPrbgaedXB4+UvDTOyhzCzw@mail.gmail.com>
 <184f0a80-34bc-5ebf-58bb-82a310eb91f6@linaro.org>
In-Reply-To: <184f0a80-34bc-5ebf-58bb-82a310eb91f6@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 21 Apr 2023 09:51:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WLHpddAMo7GQwj98TtDn0xw6UzgYUKyVhSDZw1acKpCg@mail.gmail.com>
Message-ID: <CAD=FV=WLHpddAMo7GQwj98TtDn0xw6UzgYUKyVhSDZw1acKpCg@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: display: simple: add support
 for InnoLux G070ACE-L01
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     richard.leitner@linux.dev,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Richard Leitner <richard.leitner@skidata.com>
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

Hi,

On Fri, Apr 21, 2023 at 9:45=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/04/2023 18:37, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Apr 21, 2023 at 9:26=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 21/04/2023 18:15, Doug Anderson wrote:
> >>> Hi,
> >>>
> >>> On Mon, Mar 13, 2023 at 12:51=E2=80=AFAM <richard.leitner@linux.dev> =
wrote:
> >>>>
> >>>> From: Richard Leitner <richard.leitner@skidata.com>
> >>>>
> >>>> Add Innolux G070ACE-L01 7" WVGA (800x480) TFT LCD panel compatible
> >>>> string.
> >>>>
> >>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> >>>
> >>> nit: as I understand it, ordering of tags is usually supposed to be
> >>> chronological. You signed off on this patch before Krzysztof acked it=
,
> >>> so the SoB should be above. I'll fix that when applying.
> >>
> >> Some people agree with this... but b4 disagrees, so I would say the
> >> tools should implement the right process and right decisions. We shoul=
d
> >> not be correcting the tools' output, unless the tools are not correct =
-
> >> then fix the tools.
> >
> > Ah, interesting. I checked and as far as I could tell Richard had
> > manually added the tag when sending v2, so I didn't assume it as a
> > tool-added tag. I'm happy to let "b4" be the canonical thing that says
> > what the order should be.
> >
> > OK, so I just tried this and I'm confused. I ran:
> >
> > b4 am -P_ 20230201-innolux-g070ace-v2-2-2371e251dd40@skidata.com
> >
> > ...and when I check the patch that b4 spits out my "Reviewed-by" tag
> > is _after_ the "Signed-off-by" tag, just like I asked for.
> >
> > Just in case Acked-by was somehow different than Reviewed-by, I went
> > back to the original version where you added the Acked-by:
> >
> >  b4 am -P_ 20221118075856.401373-1-richard.leitner@linux.dev
> >
> > ...and, again, it matches the order that I thought was right. In other
> > words, the patch file generated says:
> >
> >> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> We talk about `b4 trailers`, because the tag is applied by the
> submitter, not by the maintainer.
>
> >
> > Did I get something wrong in the above?
>
> Your `b4 am` will of course put the tag later, because it is you who
> applies the tag.

Ah, got it. So I guess from the perspective of "b4" every time the
author modifies a patch (like adding new tags to it) then it's a new
application of Signed-off-by and thus the old Signed-off-by is removed
from the top and a new one is added below all the tags that have been
received. Thus if b4 grabs all the tags off the mailing list for
applying it ends up in a different order than if it grabs all the tags
off the mailing list for sending a new version.

OK, I can understand that perspective. I'll keep it in mind.

-Doug
