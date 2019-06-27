Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E7A9578D4
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 03:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726502AbfF0BCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 21:02:24 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:45631 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726410AbfF0BCY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 21:02:24 -0400
Received: by mail-io1-f67.google.com with SMTP id e3so903539ioc.12
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 18:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=LukHuzspVdtsbWmPrQxtJofMfIkJuuBn4KLHq+hXvnA=;
        b=S+FOaFSkDCDJ8fulPJ2UtIixLPm6C3blKm64Y26FpWliH1L0Kug+UoWJSnPzdI0Hcj
         WIpQSV5+lHeemPxtT7Xcm9l2PGDireS9Cy5y9WyCF6nc8MvNf86DT26n4Uj7szEVflXK
         7TdcSck6au5p+xNo79U3stPs5H1RUiTS20Kh1vpGpP8BZLL1aurZbclNgue4GAr053eG
         IbbEFmsd4K4jnK/HKIBOTzUgeV8PgouYszZgI9mVl29aXMFMCPbfE0b+q6K1Srmh1sdH
         CjXuVDZOcP7s9hMhGovvS1kStrCycR0lygvxsnRqkr3dk1iFcCEqAziHpxKtYM1HyLRb
         9oCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=LukHuzspVdtsbWmPrQxtJofMfIkJuuBn4KLHq+hXvnA=;
        b=JTsm/FVRLB+WBvkYNPshZPxi2e3VrUPKt7zc3Gpg+1ZL8ti4GqDsEVNFViTgMsPAkb
         kZ0Z6kkvu0PfAJrFFAalqLaBdO/0NGh2/pvyLT3Vr3BGCLI1R6jNot5/gqvz2OmLC6O+
         U7nDPoOdTIjthiak5X7D8ydQJQgFt9yqgJiTmqyzsi4Xk+Ag8ytWk1pIFxgXBVlyAEVS
         iR3SFnEJHfgYbLdZYbK/oxPl6Wnx6Gyha8v1m1Olx9GzVgLaCUUT3fIr2Um7KpS4WOsm
         iCQoRsg5qEP6vqNs4fdF7IPTAvJAqJ23ubVqfnJ4HTe5AomVr1A29pUlHjK9gGQl9fQe
         00/A==
X-Gm-Message-State: APjAAAVoDuxhq6PYJbICo8WHiJTP7emCgxkesDXYd9O65p7gYu0pjYke
        BzcWBeyyh3kHR35DOGhWSbiFSw==
X-Google-Smtp-Source: APXvYqxH6d/kyIhVX9FR3/pclmA0eMPc/eQpoi25e5p7JBHqOX5DR5DbYu4JLM1fBKxoY3ScgDchXQ==
X-Received: by 2002:a6b:f711:: with SMTP id k17mr1267637iog.273.1561597343694;
        Wed, 26 Jun 2019 18:02:23 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id p10sm1457892iob.54.2019.06.26.18.02.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 26 Jun 2019 18:02:23 -0700 (PDT)
Date:   Wed, 26 Jun 2019 18:02:22 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh@kernel.org>
cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] dt-bindings: arm: Limit cpus schema to only check Arm
 'cpu' nodes
In-Reply-To: <20190627000044.12739-1-robh@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.1906261759390.29311@viisi.sifive.com>
References: <20190627000044.12739-1-robh@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jun 2019, Rob Herring wrote:

> Matching on the 'cpus' node was a bad choice because the schema is
> incorrectly applied to non-Arm cpus nodes. As we now have a common cpus
> schema which checks the general structure, it is also redundant to do so
> in the Arm CPU schema.
> 
> The downside is one could conceivably mix different architecture's cpu
> nodes or have typos in the compatible string. The latter problem pretty
> much exists for every schema.

The RISC-V patch applies cleanly, but this one doesn't apply here on 
either master or next-20190626.  Is there a different base commit?


- Paul
