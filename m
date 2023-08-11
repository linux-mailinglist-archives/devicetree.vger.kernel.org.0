Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD917779211
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 16:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbjHKOmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 10:42:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236237AbjHKOlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 10:41:53 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE2E30E2
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 07:41:51 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bc9811558cso1905139a34.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 07:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691764911; x=1692369711;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GJ+3y/UeL698SKMPCe4hX3oqNICH320JUvgW4hYZIVo=;
        b=CLJwpvlG7SCn1yQ8lMwgPWrrEWXv+GIyNSo7wAvFhaUtJ+FWvUq7NNWcGU/gruSIvn
         C5xXfL9prWRNhJeY98fbm7ufZjBc7MLCHfBud2MzEjNjWm0+jxV7lUIH4ohjyXn6Eo3e
         BGtCkEEhnO/3tSvDPZ6RKxD3ccSPJB+kzKnplcBSemeQXXYEiu4XrLYS05jq5CGDs8H5
         m+w3X2rFx6tGQlNN5tNLE8y7wtDHSuBrn624rMmxUiE/wLLF1TLSLnyo2fMCl9d+LLwv
         En2VHviqLOXJnZBWISClxkkrKmjFeqWgaHjlROZxAnuLeozsz1SeHw1xlS1ObFzAR9im
         8JgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691764911; x=1692369711;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GJ+3y/UeL698SKMPCe4hX3oqNICH320JUvgW4hYZIVo=;
        b=TRtaSKFVsYJBfscQih7Rtu8PFlcIlzLqkx9Kp3THB7dz35pg8PQOJY1UCYNEBz6PCS
         flWQSTM8uoAHoQwdvUebc8JNyeuAnVo6ZmyxWklIkPP1YB7HqNsSK5ufm8TKnc2T1k06
         rr4ZuQRcU+nliyzRdg8cEHKRbmRezd56S0mZdbfKodlXNvC9sTNU/cfmw0ITH6jorFc2
         B4gLCjwy0D1xaO5Sy2/vfvEGLAJMdzb+2jGEWfv/a/zc97Y+k9SmjYnddWCShDEyt2Yp
         seJIjRXIQ8aB1i9MWTTS22Qx/M7+gAvaAJxTF8UV9ZYvRWMlzF5Mh1+4tqRSKxbzSXMt
         ykNA==
X-Gm-Message-State: AOJu0YyxWAddvLwAP4uZbU+0+dxc/tTnAXYY0YPv07kgsUHsz7+RnTTJ
        nV3zvbff9+tAOy4NjDtugNJ4r3QPDNM=
X-Google-Smtp-Source: AGHT+IH7Yr2nJH13kJ35wMx2sSnCVkYBYijI0LrIht7R9FB2EydwHt44OhImJFMS+0zigImwIb/4JA==
X-Received: by 2002:a05:6870:524f:b0:1bf:c55b:eef9 with SMTP id o15-20020a056870524f00b001bfc55beef9mr2338317oai.27.1691764911078;
        Fri, 11 Aug 2023 07:41:51 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id o123-20020a0dfe81000000b005773b750d95sm1029946ywf.28.2023.08.11.07.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 07:41:50 -0700 (PDT)
Message-ID: <64d648ae.0d0a0220.531ba.5b33@mx.google.com>
X-Google-Original-Message-ID: <ZNZIrOYaOar4DSkO@neuromancer.>
Date:   Fri, 11 Aug 2023 09:41:48 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: display: newvision,nv3051d: Add
 Anbernic 351V Support
References: <20230809153941.1172-1-macroalpha82@gmail.com>
 <20230809153941.1172-2-macroalpha82@gmail.com>
 <20230810232409.GA1548096-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810232409.GA1548096-robh@kernel.org>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 05:24:09PM -0600, Rob Herring wrote:
> On Wed, Aug 09, 2023 at 10:39:40AM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Document the Anbernic RG351V panel, which appears to be identical to
> > the panel used in their 353 series except for in inclusion of an
> > additional DSI format flag.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
> >  1 file changed, 10 insertions(+), 8 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > index 116c1b6030a2..576f3640cb33 100644
> > --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > @@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >  title: NewVision NV3051D based LCD panel
> >  
> >  description: |
> > -  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> > -  this driver only supports the 640x480 panels found in the Anbernic RG353
> > -  based devices.
> > +  The NewVision NV3051D is a driver chip used to drive DSI panels.
> >  
> >  maintainers:
> >    - Chris Morgan <macromorgan@hotmail.com>
> > @@ -19,11 +17,15 @@ allOf:
> >  
> >  properties:
> >    compatible:
> > -    items:
> > -      - enum:
> > -          - anbernic,rg353p-panel
> > -          - anbernic,rg353v-panel
> > -      - const: newvision,nv3051d
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - anbernic,rg353p-panel
> > +              - anbernic,rg353v-panel
> > +          - const: newvision,nv3051d
> > +
> > +      - items:
> > +          - const: anbernic,rg351v-panel
> 
> I don't understand. Is this panel not based on newvision,nv3051d? If 
> not, then it probably should be a different binding. Lot's of panel 
> bindings have similar properties.

It appears to be the same panel (or extremely similar, honestly I don't
know because there are no external markings on it). However, this
specific implementation seems to require MIPI_DSI_CLOCK_NON_CONTINUOUS,
not using it prevents the panel from working. As for the existing panel
MIPI_DSI_CLOCK_NON_CONTINUOUS stops it from working. The different
binding essentially determines whether or not that flag is present, but
otherwise everything else is identical.

Chris

> 
> Rob
