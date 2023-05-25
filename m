Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F16710DB6
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 15:57:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241085AbjEYN52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 09:57:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241060AbjEYN51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 09:57:27 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85555197
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 06:57:08 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-55db055b412so8453407b3.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 06:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685023027; x=1687615027;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XDo5JGpMh+sfqhz2XW6FMxspF0XjVpH9YEGVgGeMjUw=;
        b=TTAz3FOgo7dOFNI7aoiwX/0ljg5lz0wR0gFOezPqt9E1Ubrz1VqGe6aviRVmBjQGxY
         mXF1M4aX7QL2DpYmXW1TLEnGsA82U73NiD17Sw4DpyLEEwxDd2CN8/TSuyiebDJmdOph
         9lipSq39yElmxJTXAJncx/josTWvpCiYdKGmBZImHlwizI4ySjj7iYIFLn4+gNqcXAzs
         5TtwqWH0jseD8nGeXTCwlMNZ9CzR5pQTY1ZGIT8VvzV0c28G2BmAPDp9CEHdDsMMBy8T
         pKHknHW4hdN5A5n6z4//aTrHaniwuIvHJsTye3wn20Oy2P21nWwS90GzEUC3GRbupZ6U
         sOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685023027; x=1687615027;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XDo5JGpMh+sfqhz2XW6FMxspF0XjVpH9YEGVgGeMjUw=;
        b=O90FMYjra1AyTISzRLUVr2r0bMWkWFgm1wmrI1eM6tz02lqL0sV1Z1f5lt84rkXAyu
         0DdJ7/Kj8XyFfael+M6ti5y3FFQsZ8Au3vqHCRLNpkY77Qe+aQVAZ3gj1jSP/P7BwG7e
         r+ilfnjxxI0OYaUhS7zT26ZuV+WSKn7AYftmNCqBo1mQW3yKN4Kk7g0ytzUJfvQ4UEkY
         JroRKduNTyyEAx//s82hHSzLVvJVrxpcfZuQAAo7KT0izp4zWFmAwcrCQZvo4miw+1iw
         rZt68aRRGRNHgHMOlj/RFV//VsRF2rMihdFSXdInohu0v4oV+Q4nYEmLbGa1IjjI1Vmj
         3AFg==
X-Gm-Message-State: AC+VfDycsp/C48fAcAWwB8HDiTQUpAsVeeR98WSbOTQ+KCyhBfoZSBS5
        opAn99QchtuxU5bSmCk5IpM=
X-Google-Smtp-Source: ACHHUZ5FiUL0rUUkvwykB8kqe+2IeLANHjnUXgIdMT6rP0bdidLHdnLmRMsDhL1wP2uFZ72SwMPzNw==
X-Received: by 2002:a81:4ec7:0:b0:561:987e:27a with SMTP id c190-20020a814ec7000000b00561987e027amr3756808ywb.10.1685023027566;
        Thu, 25 May 2023 06:57:07 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c184-20020a0df3c1000000b00555df877a4csm371333ywf.102.2023.05.25.06.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 06:57:07 -0700 (PDT)
Message-ID: <646f6933.0d0a0220.e2a16.15a9@mx.google.com>
X-Google-Original-Message-ID: <ZG9pMemLwjqAuaWz@neuromancer.>
Date:   Thu, 25 May 2023 08:57:05 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-5-macroalpha82@gmail.com>
 <20230524-extrovert-unhidden-35e289c28bc4@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524-extrovert-unhidden-35e289c28bc4@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 09:30:03PM +0100, Conor Dooley wrote:
> On Tue, May 23, 2023 at 04:38:23PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Indiedroid is a sub-brand of Ameridroid for their line of single board
> > computers.
> > https://indiedroid.us/
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 82d39ab0231b..632662be6e65 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -655,6 +655,8 @@ patternProperties:
> >      description: Iron Device Corporation
> >    "^isee,.*":
> >      description: ISEE 2007 S.L.
> > +  "^indiedroid,.*":
> > +    description: Indiedroid
> 
> Can you add this in alphabetical order please?

D'oh. Simple mistake, sorry. I'll fix it in V2.

Thank you.

> 
> Thanks,
> Conor.
> 
> >    "^isil,.*":
> >      description: Intersil
> >    "^issi,.*":
> > -- 
> > 2.34.1
> > 


