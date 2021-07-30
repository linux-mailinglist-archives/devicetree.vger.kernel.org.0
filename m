Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6723DB5EE
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 11:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238095AbhG3JcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 05:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238160AbhG3JcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 05:32:15 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E080CC0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:32:10 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id y4so8802137ilp.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QKbni/aqZ76egtkhHkdY0UN0LLkLh5aeXXQeCasUkGw=;
        b=tsJk19gj3PkHmJlHLJBetwd4R6wBhJLLd/jqdoeSuniGamNJhUloHmn9Om5S6Xtb1F
         aHESwW0AAwDpr4rE3MHELlyFuZgtOjXswiUzKTi5UF2y8bQwaDTccAtbqBTgdi6k0uLp
         Xom+icaVuL6AmjU70Bs9WjQ00OyqCm1h5XHAOamMUzKmLWRIed7TJ97AsvC9QLS1k8Bx
         5Cjdoq4OAW91rRhW089foyTtOwVoRPQ9dHGYvFquGDPqo2eg0PsC7ooG2eLZEZIv3WNg
         vnuuBvVUnz0q5RFoU0Wale42c6jGEexWwBqS7Lb5bc4DJp2T7EvP8Y7znE1E95N+K0oW
         JxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QKbni/aqZ76egtkhHkdY0UN0LLkLh5aeXXQeCasUkGw=;
        b=OieU56JLRxxt/DCBaBPm0iMv0JadH7aKvSRCQXscGW3liTQCuqivusqm7cyWCZqili
         lkdjrbmSi8prAPop+J7aUfKeWW1lTrrpPqCNGmLlOgqZYkZ1JNsJ3c/nYAR6fpafI+60
         aAnyX5GNPBKLOND28/vPutO0LnAPls59y8RqzeMVX3gGrhs2NS6/Qj9mURRbgwhtKDaN
         aOGp/9q6OLoDrpy9NltF1YyjVwgUHD5P0RUdXa0K5gisBfDES6iB6LoeSGuLyyErZ/ab
         Jrnrvdm4lkFQQc6zRTLFQ63cC06heUok+3qq1apeIar1lmFqHJfxf2UwnJocdxoceUb1
         za9Q==
X-Gm-Message-State: AOAM532O3gvC7kCqIwTaZx1UkVdaBnZVR/n4T66YYjwTPqlrJ+TIp2pF
        uc3VpXCFiOt2JCi6MkWTEJ1ILeekcmWllF09D9/4pQ==
X-Google-Smtp-Source: ABdhPJwZLOf5Uom5UUNk1V2tXMhgVFLbgGGQQUfIB7390G3ZNeOxSBTJlaBusk0ofIKvM2BK/hKZ296u0QH3MGgaERk=
X-Received: by 2002:a92:b748:: with SMTP id c8mr1288763ilm.302.1627637530193;
 Fri, 30 Jul 2021 02:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210727101051.24418-1-yunfei.dong@mediatek.com> <20210727101051.24418-3-yunfei.dong@mediatek.com>
In-Reply-To: <20210727101051.24418-3-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 30 Jul 2021 17:31:59 +0800
Message-ID: <CA+Px+wWBWsxL=5_QYA6_v18uuRwFyoO4gT5CEL6_On4GeY+jag@mail.gmail.com>
Subject: Re: [PATCH v3, 02/15] media: mtk-vcodec: Align vcodec wake up
 interrupt interface
To:     Yunfei Dong <Yunfei.Dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 27, 2021 at 06:10:38PM +0800, Yunfei Dong wrote:
> Vdec and venc can use the same function to wake up interrupt event.
>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
