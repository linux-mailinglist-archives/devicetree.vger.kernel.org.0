Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAAF34565F2
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 23:56:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbhKRW7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 17:59:43 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:45651 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232816AbhKRW7m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 17:59:42 -0500
Received: by mail-ot1-f43.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso13647611otf.12
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 14:56:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YwMDztY7RxIGH6gxXPQx1kOqP9q46dX/pl5U8pnCx3o=;
        b=UZVBgJW+mAsQHmzrLtrhRZ8SBIEdgDa5fGuO/CqO8Ht4uhzVjKDHZibP6dqmnlLuEa
         Ws/r8ftiBRtJLiKGgC8bPgJCZZiXUMhwywgzBHzS5kFZMmOBupkgLRzI1yy7Knas5qsH
         MTOijARsvhjiWpPM6sEoynKAnKYMNBUlMTUi5KO1m/lGnXbCSn3OHwugx6QUwtP/ImtH
         idgpL3NDomLG8sJKsSxvCq6mLq3S3aS1SKHndwXIIQdgTHIieSbYmKYlgj7Jh7iKwQwk
         LMMLssmrrh/zdKdvd9PIsf4ifT2mkhOrrYxvMZ8KGuk0Rgp9Hu1Nd7MdqBIg9r9Wf1HB
         2gjQ==
X-Gm-Message-State: AOAM533sso0fFlbARQX6zDSQHX/o52oYI1dCEM0dPyUDj3QO0H+5DlQQ
        fbf009CZ4L7JYv6IOKIaVg==
X-Google-Smtp-Source: ABdhPJym6jQaeHFtftQAsARFwYeUKeHviN4RWRHj5ag4OkkoJe+MVPYZRs4UtZhFYrjoyFlH6b57wg==
X-Received: by 2002:a9d:5c2:: with SMTP id 60mr727516otd.104.1637276201930;
        Thu, 18 Nov 2021 14:56:41 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id d6sm227483otb.4.2021.11.18.14.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 14:56:41 -0800 (PST)
Received: (nullmailer pid 1917917 invoked by uid 1000);
        Thu, 18 Nov 2021 22:56:38 -0000
Date:   Thu, 18 Nov 2021 16:56:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Message-ID: <YZbaJr1o0BiUZZ+9@robh.at.kernel.org>
References: <20211116143503.385807-1-maxime@cerno.tech>
 <20211116143503.385807-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116143503.385807-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 03:35:03PM +0100, Maxime Ripard wrote:
> Following the previous patch, let's introduce a generic panel-lvds
> binding that documents the panels that don't have any particular
> constraint documented.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/panel-lvds.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
