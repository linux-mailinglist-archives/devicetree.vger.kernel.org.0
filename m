Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10C0975FE10
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 19:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230214AbjGXRof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 13:44:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231738AbjGXRoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 13:44:03 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73DC219A0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 10:44:00 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-55ba5fae2e6so3306902a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 10:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690220640; x=1690825440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J3N277sEYZfKNrO9MSgzSByOw202Qb6E6AE2Nrgm8Q8=;
        b=pXWrrfQC+xm/I7SrWdFWX2zuH+1E5mrxuTv9MJiXatdV/yBxsIN76aenPgBa6F1asU
         A/pSWCyISxPe0BNdZNGGJd7u6/cJNA9Duz+0dwTktgPT5xRzHn2MVh2x66FaK9mf6lVb
         6m7XgEOUIjvabnqgFVFZCLd8mxChHgDoHZG+EYrmAU84KnVAX+AHf9H6f3SFcM+Hr6aK
         /36tGIqmT/JyKfKWGyqPyxdwJ3zxSZwDvzoP4y42kDPOFDJUVzmSp+fzKHaXjqsqD1lZ
         ewFiHZpAJaJwmVeSVUUgP9D4qB/HsNRv9fBDUUhL0a6Ue8rR5WKuAJHQe20jwcX2J6yL
         kAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690220640; x=1690825440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J3N277sEYZfKNrO9MSgzSByOw202Qb6E6AE2Nrgm8Q8=;
        b=Ln35p0734tGbDosCyDqRor4kW2F+x+Q0c7a1ArSzgD8IeJXDx9YxmZY7YJqCYP/dYs
         LdWdKUxWyC52bSBdFDrQXS0T+ta3cpujdhTbwmCI0tePY3TSjBPlwLUdfKh1tpfIndpG
         a/ySZ2WjLiNnRZbh8mF5ErOt5o3zTJuFtYHwTweVdK/arF5mEVCnDzOrY3Wag38bFC0W
         xpSJZ9ejkOMh90PdikT9n6kkH6nS86Vfpl+rryJh3RCOy6H4LzA5SCeb+dJJODmwKkLX
         5229DBPMKcCnUB4BZs2cqPduMaEHyizTimLPrGmKqMZlDn+KVbgHAinMZo/l7SHmows/
         lnPg==
X-Gm-Message-State: ABy/qLYiyl40ACEOY4sRnFl2oDJTGoosz3XoLqfWh17nZfAVSrdKd9qW
        rdFQStJ20zD5jFIUkqa4e+uydg==
X-Google-Smtp-Source: APBJJlHKKAkArEM0A/RRqvmco2eiWB6hUeTVUB1y2iEY5OE1TPkkxSBF9u6UOH+Qo2s/QCm60S/kiA==
X-Received: by 2002:a17:90b:1b0a:b0:263:2335:594e with SMTP id nu10-20020a17090b1b0a00b002632335594emr11297290pjb.38.1690220639962;
        Mon, 24 Jul 2023 10:43:59 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:b55a:eeb0:a3a8:248e])
        by smtp.gmail.com with ESMTPSA id ot15-20020a17090b3b4f00b0025bcdada95asm6815710pjb.38.2023.07.24.10.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 10:43:59 -0700 (PDT)
Date:   Mon, 24 Jul 2023 10:43:57 -0700
From:   Drew Fustini <dfustini@baylibre.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/3] riscv: Add BeagleV Ahead board support
Message-ID: <ZL64Xe56HUvYwuux@x1>
References: <20230722-upstream-beaglev-ahead-dts-v2-0-a470ab8fe806@baylibre.com>
 <20230724-unwatched-left-f38189206b0d@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724-unwatched-left-f38189206b0d@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 06:36:34PM +0100, Conor Dooley wrote:
> On Mon, Jul 24, 2023 at 10:20:37AM -0700, Drew Fustini wrote:
> > The BeagleV Ahead single board computer [1] features the T-Head TH1520
> > SoC. Similar to the Lichee Pi 4A series from Jisheng [2], this adds a
> > minimal device tree file to support booting to a basic shell [3].
> > 
> > Changes since v1:
> 
> > - Add dual license to dts file as Conor noted this is typical
> 
> I figure the dual licensing of the dtsi & sipeed board will be done
> separately?
> 
> What's here is 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for the review.

Yes, I was thinking that would be a different series as a followup
to the original patch series that added th1520 and lpi4a.

Drew
