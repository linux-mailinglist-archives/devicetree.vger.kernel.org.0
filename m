Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 881F53E9787
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 20:19:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231217AbhHKSTr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 14:19:47 -0400
Received: from mail-pj1-f53.google.com ([209.85.216.53]:33766 "EHLO
        mail-pj1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbhHKSTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 14:19:47 -0400
Received: by mail-pj1-f53.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so5662015pje.0
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 11:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ilpZFfh2W+CY8+HCSImTzYloCYVl2pqPpxQYj2d5QPI=;
        b=B5a05WLSU+4zuhEO/15k1vfCL+KuL2BBp3jg0UtCyfsAQQkQvsxFP4m6rDiNiPwXKH
         oW78RALi0XliIZaxcT4riO9zI8PUIl0byDiH2FfpqCRQe7U60ud6lfLGcDUH4zQm2FPJ
         qoFT8ubZNJ47o0o/pF5793JUE0StwQtepZGglk4/lqB/TxU3iqprxDG2mk9ZFkg8ecGv
         AedDoYqXu1UP5fgoPenv6bXtMlMucG48S5IT3B6UWbFSDHTXh8ooFPyPVj/XW+3D+0C9
         J+IiqI2Ve9+kDo39yKvo+uEYvxaGZGB0SsPS6dmmWgrxddE40083jT3nP8NH9dMK+tzA
         5QJA==
X-Gm-Message-State: AOAM533bItg4Yg09NlZ1WB3bRVz3nlRiBIkJGS6Hk6e+fnd+jqLR/lY/
        EQ6z6+3nskzYKbm6INjXCg==
X-Google-Smtp-Source: ABdhPJxUdAalxENdH6d6efbOmzxEgsbEVrYlNZ1GqZ+dtvFoyMVQkp9dVRHrCSA/A1CQgbuDZCz/iQ==
X-Received: by 2002:a63:5002:: with SMTP id e2mr41094pgb.256.1628705963297;
        Wed, 11 Aug 2021 11:19:23 -0700 (PDT)
Received: from robh.at.kernel.org ([208.184.162.215])
        by smtp.gmail.com with ESMTPSA id 15sm141463pgp.3.2021.08.11.11.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 11:19:22 -0700 (PDT)
Received: (nullmailer pid 29882 invoked by uid 1000);
        Wed, 11 Aug 2021 18:19:17 -0000
Date:   Wed, 11 Aug 2021 12:19:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Mark Brown <broonie@kernel.org>, bjorn.andersson@linaro.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 05/20] ASoC: dt-bindings: replace q6afe bindings with
 q6dsp-audio-ports
Message-ID: <YRQUpZeusOEA9aOM@robh.at.kernel.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-6-srinivas.kandagatla@linaro.org>
 <20210804175334.GE26252@sirena.org.uk>
 <225bc8df-0d78-09d6-4dc9-8cc2145f095f@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <225bc8df-0d78-09d6-4dc9-8cc2145f095f@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 05, 2021 at 10:16:14AM +0100, Srinivas Kandagatla wrote:
> Thanks Mark for the review,
> 
> On 04/08/2021 18:53, Mark Brown wrote:
> > On Tue, Aug 03, 2021 at 01:53:56PM +0100, Srinivas Kandagatla wrote:
> > > DSP Audio Ports bindings have been documented with DSP services bindings
> > > which makes it difficult to reuse them, so pull them out in to a dedicated
> > > bindings.
> > > Also as part of this change convert them into yaml format.
> > 
> > > This patch also removes q6afe bindings as dsp services are now documented in
> > > apr bindings.
> > 
> > This feels like it's multiple changes stuffed into one commit which
> > makes it difficult to review, especially since I'm having a hard time
> > connecting the code changes with the description.  For example this says
> > it removes the "q6afe bindings" but we seem to be adding some in the
> > newly added YAML file.  At the very least the commit message needs to be
> > improved but I think this probably needs to be split out into separate
> > changes each doing one thing.
> This patch is doing yaml conversion + removing the "qcom,q6afe" compatible
> from the existing bindings + header file renaming.
> 
> I agree, will split the header file renaming and yaml conversions as two
> patches, that should probably help. I will also update the commit message
> with more details.

Perhaps also relicense the header to include Qcom's preferred license.

Rob
