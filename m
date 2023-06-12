Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEA4B72B8A5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232246AbjFLHcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231764AbjFLHb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:31:59 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1190E170A
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:26:59 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-33d0b7114a9so27526565ab.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686554618; x=1689146618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=TSwY1xCOm1McXHZ8yLzX4Nzp2vPy620QpJCKzqiQuXwzhmbdEyJWw45T4Z5akBq+Sd
         PpWLNzq5oPV+A/M6aeD6JA5k2HmMEO50F0DB3Ih3IBJE1DWPaC6AlBYi9r/Yf1uaiiQn
         jqvhXOlVMmd4gom59E5fIBb1P0eLW4cXRVhpbxOOusNshG3kat3sE7TOVEC+C9Tvn6G4
         ym4egG7/q/MV6fmZ8u3MH7Za7GtoyiKbYIQ0LcDXQW8/WDXDEdz8gfG9i1PpsUZU15Lq
         1jXUyR4+oO2/RNBtr2m7xb3Z+jJiRMEaEyoGSwFaC/vVaVN7eFXx8RwvsBg+702h9TJx
         xTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686554618; x=1689146618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=DaxBWG9gkACmmFW2OxX6LX0eB5OOA9QJ4aKRWQaHgCw7hzXinFNe8eeg5/BXT5QWbu
         YOc1ScocXMA0hhBb4j2grlt56hzNPpP8hQhWQE3xF9UUAnCq8/ZjvMehK5X9wwu+ouny
         l535HE3OirfLJQEkGILNNAvHlkT0IRzsMPUF0vUbTR2LsoVgWRuUl8ow1kM028pPKasy
         6J9nwi7Ajih4+SAPsB8K60ZdlZOCkeWFDNQOdlEPjMj3Q345cpZj60LpEa6iosE0cv3W
         C0Tsh9j+nSrPyl+J0poFZHvm6u5UI8iCFOdQc+H6E+rfa4K457xGbEiscA50cGcbRZLJ
         mujg==
X-Gm-Message-State: AC+VfDx9Wva5Rn9qC/bpg8VmY2IlLqnpYL92+jSjzUaGq/feCjCu9e3n
        zdW/s7qE6FSdC8jC1PZOQnueNr0893vKuFeubqY=
X-Google-Smtp-Source: ACHHUZ5sJYvL9TZNLH0BQd1Fc9f0cmvZomQa3cmFnFMy60vmYr203ADmIaa55NWbbJoZiVglLnaglg==
X-Received: by 2002:a05:6870:9545:b0:17a:c612:ae0d with SMTP id v5-20020a056870954500b0017ac612ae0dmr4979103oal.49.1686553681749;
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id eh11-20020a056870f58b00b0019f188355a8sm5530728oab.17.2023.06.12.00.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Date:   Mon, 12 Jun 2023 12:37:53 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/7] RISC-V: simplify register width check in ISA
 string parsing
Message-ID: <ZIbESTLWl1hjw2FJ@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:25PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Saving off the `isa` pointer to a temp variable, followed by checking if
> it has been incremented is a bit of an odd pattern. Perhaps it was done
> to avoid a funky looking if statement mixed with the ifdeffery.
> 
> Now that we use IS_ENABLED() here just return from the parser as soon as
> we detect a mismatch between the string and the currently running
> kernel.
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
