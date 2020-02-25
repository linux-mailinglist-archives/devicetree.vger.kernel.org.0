Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1A416EE8C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 20:01:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729377AbgBYTB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 14:01:29 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:35947 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728787AbgBYTB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 14:01:29 -0500
Received: by mail-ot1-f68.google.com with SMTP id j20so553838otq.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 11:01:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3UiS1eUUWIICn86GMqTy+EhI/ZWZsM+DWNR/fIsV8EM=;
        b=mbT1LMFMnJSbfdOedhik44VuqpEVqxtrQQymYp78pgOH7yF1w+SMGyIfQziZYYRAXA
         iB9Z/3i6zixpMZZEpjidgsaemulpVh/a7VRh2jGGdSbg4Tdq6W1qcldzwKIRDjjFt3ML
         G4OZ/taUfGT/CTECFja5rswL8Un6DT9JtH9Hm1olrrGH02Lf5pns0O1ARrAivli37nZn
         rXZpff2eS9enJWcAHw/jplkSDmqonnrXz5UkQTa2aOuIiUEwkNbZlzobfb1Sq5heqxC+
         8Pcu+1Pw9FhvA4k9joWSRJx2D/0pJokDazxwlNdmofOOKJMCSrM4piJoMEubGqrkrA8w
         7ZSg==
X-Gm-Message-State: APjAAAWhjN0JHT1OUIlh25s6nibYCwjU7QNg2X4o/CBgxp2BD03EE9gt
        Gr/0zF0GrOOJWUkvFgsaOg==
X-Google-Smtp-Source: APXvYqx3rSJj3H24sw8zWjqiNGNCYIj+PtxaDWiZxloyPoQxNyHzLOtm+Ns4hS+Otkz2sAr1VYSvaA==
X-Received: by 2002:a9d:638d:: with SMTP id w13mr49992otk.220.1582657286713;
        Tue, 25 Feb 2020 11:01:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n16sm5923338otk.25.2020.02.25.11.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 11:01:26 -0800 (PST)
Received: (nullmailer pid 2873 invoked by uid 1000);
        Tue, 25 Feb 2020 19:01:25 -0000
Date:   Tue, 25 Feb 2020 13:01:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/5] dt-bindings: ARM: Clean up PMU compatible list
Message-ID: <20200225190125.GA2781@bogus>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <397df7accd295d2f743830591facbd2fb99208af.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <397df7accd295d2f743830591facbd2fb99208af.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Feb 2020 19:35:30 +0000, Robin Murphy wrote:
> The "alpha by vendor, reverse-alpha by model" sorting of compatibles
> that we seem to have ended up with is decidedly odd. Make it less so.
> 
> Also copy the comment from the generic "arm,armv8" CPU binding to help
> clarify that the "arm,armv8-pmuv3" binding is rather intended to be a
> counterpart to that, for describing implementations without a specific
> microarchitecture like the AEMv8 software model.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v3: new - can be squashed or reordered with #2/5 if desired
> 
>  .../devicetree/bindings/arm/pmu.yaml          | 50 +++++++++----------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 

Applied, thanks.

Rob
