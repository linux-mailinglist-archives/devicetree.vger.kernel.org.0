Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1D632A77D0
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 08:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727986AbgKEHPH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 02:15:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726371AbgKEHPG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 02:15:06 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17151C0613D2
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 23:15:05 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id v19so460391lji.5
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 23:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TWG/H2FcV9+85Gv+l+usRIBA2/sArLkYfjgPcv0Ayyg=;
        b=HZr14t3YQaS6wmZGUGGg17F6YFQZb2bfQ0ZVcOAe3K3QLDNkgnakem9GKQqVifCXoi
         STNZDz8msWXRXzjPLk2dorsXnFOWv+cYTqj9SwP0FYXkvO56wXjbOi/oVEssEqCi1ZYD
         LzhOcfQ+fS+CwUTzK3AN8Sj7Y0i/pcwcBXGRXdCoAlbnDmaoPX30hUJSiOgUkJVvXwU0
         XS2Gq/vxN4oQwRmjKhARfz94fxVWwElpyCefw/fIxieFeDnt32sW5zCLpJJE8PVqkEK+
         EZWwQ7vpmdt+f3/KDMemYQogxXdNiw0wKVIKT8DMxIYPekR3ZTMMJYGW7b9eUc8WoFzx
         Uvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TWG/H2FcV9+85Gv+l+usRIBA2/sArLkYfjgPcv0Ayyg=;
        b=ZukvCnyMKa5YILhA/5U9+apLRnFpvROC92oeMCzpI7JNSFWKATHf//YnqXPXSOYrZw
         xkpCVQUWA1u8oIltUyhWpokZK33lWyKeobDJf+Keocxc857YAScIUhwfUm0yaQ7RdPyC
         Dwk3/KPuhJufL1A7J+8Mem623J8axy3hmYuCAkkNFvS6DU/rWkHwR4mwyMdUm4BjV0JK
         AE7kc2wZ5DlhBF9ozXkCE75OK0LPLgh4ewUqRJGz3pT251p7TspAGIf/T52tX4mzmCCO
         idmi87kD7s2chHW9tBUbihst+sD/xP2fEohL7G10IKf5D66883r/atkYds6myund71lb
         XJqQ==
X-Gm-Message-State: AOAM531sAePT7BWp1F12GgxqHAbhR5E3fAAcFVjrzD8lugb0kNp22ge5
        p3bmP4aBY8zw4WZYxVDVZV4iFOy2B3jrO1MFdrvEdg==
X-Google-Smtp-Source: ABdhPJwJNn+o+smBtimGxgYjMVNR/yvh4E/UcDXbPfo1VNDoO19jZdQ6gL73qx33T8BX9/T0GwuSk6VIPutEd/pDQOw=
X-Received: by 2002:a2e:8905:: with SMTP id d5mr352399lji.144.1604560503549;
 Wed, 04 Nov 2020 23:15:03 -0800 (PST)
MIME-Version: 1.0
References: <20201029062014.27620-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20201029062014.27620-6-vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20201029062014.27620-6-vadivel.muruganx.ramuthevar@linux.intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Nov 2020 08:14:52 +0100
Message-ID: <CACRpkdaz9E2yc3GnN8wus3M+qQRknW2QMe8Kn-=o=czOQf7A-Q@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] dt-bindings: spi: Convert cadence-quadspi.txt to cadence-quadspi.yaml
To:     "Ramuthevar,Vadivel MuruganX" 
        <vadivel.muruganx.ramuthevar@linux.intel.com>
Cc:     Mark Brown <broonie@kernel.org>, Vignesh R <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
        Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Richard Weinberger <richard@nod.at>, cheol.yong.kim@intel.com,
        qi-ming.wu@intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 8:39 AM Ramuthevar,Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>
> Convert the cadence-quadspi.txt documentation to cadence-quadspi.yaml
> remove the cadence-quadspi.txt from Documentation/devicetree/bindings/spi/
>
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

> +  cdns,is-decoded-cs:
> +    type: boolean
> +    description:
> +      Flag to indicate whether decoder is used or not.

Please elaborate a bit on what kind of decoder this is.
I am curious! :)

Yours,
Linus Walleij
