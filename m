Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A653368B16
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 04:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235302AbhDWCfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 22:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbhDWCfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 22:35:46 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9723C061574
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 19:35:04 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id p126so303627yba.1
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 19:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=b71nI+sXe01LhMN7x+MBgBsL+VShdc2Sy2WppyA0dDg=;
        b=fjj1fAB5Lcl0PdzNTH6o+dkAWCNIQXBT8fT0iOW2tEwEprlKeyAVGLGlFdhDj1osxF
         aStXf9IjTGeMshd1k/YsGKgkc0AFGNe/QS+Jf85BJ7TmZbse4cx8pkfe+CupblduQiaF
         YskLa6d3FE2X4gI15LXOZIQ+pTEwZJP0PW8VF7IUaCYxAbcK8HAZBgMPa+mLil24IXYr
         yBrGPDlUVejuHlmxTsWqxXZeCFGA9vBYvKxwZqwIdIX/X7r1DUliBlPeXzDGQ0RGR5Bo
         XD6OJf//Q60Uv5nWsMzwF6+u3g8gWckHZBqoJNZLkPc64bKDlb/bEEORVWJK/I21//Vh
         KXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=b71nI+sXe01LhMN7x+MBgBsL+VShdc2Sy2WppyA0dDg=;
        b=tZH9JWjkU5rzRKYmoTQnXuFyGe+uHhGwDz+8UFYrId1lKW9apE9QuVpjfdTypRg62i
         0BlaFJ5GzUhFo+wpmDbBYWcaDrJjIrh9t9WWO1DFQQnYD0+hn4a85uexjH4wXnyyYKXL
         DSxOD79EV9C14WMYyhS8pHWpYiIuIpHEbPPZO22gansJ6pM30O2oPL1mGGl1ZSUbeUjr
         /0ZI8mNEuJccqPb6N4EnitX3dAgy4rl99ZGiRFwqUE9PraWpvIa/tFqjWC0kOui1etVS
         5dr2+VQPMQ7qJZ/f7SsCrGhP7Ji/UpYv8u7aG1gWT6/2HFp6kj+kn/iZD59BPxqgObct
         5VlQ==
X-Gm-Message-State: AOAM530FkelB0/gjVIsA0pVhMl8zxZkSJXKmKEHG2z4g6ac6mTrtVoPy
        qLP6b5OSmh1xuD7Zvd7rYeA7+KzuzQhWNqiXKPw=
X-Google-Smtp-Source: ABdhPJymcFp9iH6SywNWzD2klDMVpKrlqkVupJ2x7SCU0omuqB54XpAoOccLjlc+WfJI/uVJihMnTER1Im5u/zxRtM0=
X-Received: by 2002:a25:ddc2:: with SMTP id u185mr950650ybg.41.1619145304088;
 Thu, 22 Apr 2021 19:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210416195432.24595-1-zajec5@gmail.com> <20210420212008.13174-1-zajec5@gmail.com>
In-Reply-To: <20210420212008.13174-1-zajec5@gmail.com>
From:   Brian Norris <computersforpeace@gmail.com>
Date:   Thu, 22 Apr 2021 19:34:53 -0700
Message-ID: <CAN8TOE-hMscEyqpZ+mpeZW85izuprxR-HosDgrD0P9o52ATQdQ@mail.gmail.com>
Subject: Re: [PATCH V3] dt-bindings: mtd: brcm,brcmnand: convert to the json-schema
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 20, 2021 at 2:20 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:
>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> This helps validating DTS files.

I gotta learn how to read this stuff better someday... but I'll give it a s=
hot:

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> @@ -0,0 +1,242 @@
...
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,nand-iproc
> +    then:
> +      properties:
> +        reg-names:
> +          minItems: 2
> +          maxItems: 3
> +          items:
> +            - const: nand
> +            - const: iproc-idm
> +            - const: iproc-ext

Reading the original binding as well as the code, I believe all three
are required. Wouldn't that be minItems =3D maxItems =3D 3?

Other than that, this looks good to me:

Reviewed-by: Brian Norris <computersforpeace@gmail.com>

Thanks!
