Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4845D39BF1E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 19:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbhFDRyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 13:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbhFDRyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 13:54:16 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BD6C061766
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 10:52:15 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id t9so8482077pgn.4
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 10:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZuLmtLRzd2/f/2/baTZ7UYbzdLGhXvzTf1IUsfQLeSA=;
        b=Yno+jhC6Sl/Q17chsVLkbIypcq0QmvpsdvudoTL8soIvmYpNbrvJWrTz3NcLH/btap
         n4JNsMzesyYME8FkV9BL7678tASCYPuXgmPKT7HK3QLLcfT7QqXgSqwrxvUQURZQv0ai
         +dmFUQ6KH5BRC6eXFK1vgEwW5wx2HypNai51x8LtMwv2uA6UBTAnhXihWqs1xU9FHuUy
         +7gl/hIfJXYhYRE72b6D2AsSLArWjPRGdVvchuebYb2LuoPYCs2wYWB98+UGYwHRow2f
         0K8dZMyA4MwWKhiliM7flirl9O+j2gymWj3BzGZRfppoW5IIKFReHD/F+nhAw9nKhExz
         0eVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZuLmtLRzd2/f/2/baTZ7UYbzdLGhXvzTf1IUsfQLeSA=;
        b=IfnvaagskWxrhi0qJtixyHgZHVN9A/o8D03QYv50LeKr+tWbZ2hMMmAlpzJze5ayM+
         FR5pEvaUMhQDvUlWmtqKJaxBB/HMi/A8YkvtUYZ1Z2gguGpiAopZZUTX21ZVmXqnZP2l
         2sC4g/swpwQ7PXxSNVl9rkoXwPBATqarKOkzrx5fSMZDTxfCukcpUP/oXci/a5KlFyEA
         xjUT4ELUqn8AjOChsKcAoU2+sxWXkx+bq7G6Ey/sMsu+5xz7JrmrmqMyqvM34kyE3mhN
         S5naHpyGXVbyJHMyss9JfSJYE5dlsV+SOVcmIa7VhJe2tGzgcFTrwbN3QXVQDZVN7nRF
         wbXQ==
X-Gm-Message-State: AOAM532K49LQcAtXgbMZcUTPoYKHE1gZ16PV84CqRwwjgpBmFXFDqh1K
        l6VjVA44uUeHfFMl4lfsrVA=
X-Google-Smtp-Source: ABdhPJx40h/Z2HaTQS/qJQ7Z9P8nfCcnxHQO2ysqYJoB7IBCO7JuombdZ2Qq9B4vcxOyLUOCV5hDdA==
X-Received: by 2002:a62:7fc5:0:b029:2de:5813:8890 with SMTP id a188-20020a627fc50000b02902de58138890mr5733671pfd.60.1622829135086;
        Fri, 04 Jun 2021 10:52:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 65sm2304261pfu.159.2021.06.04.10.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 10:52:14 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Fixup SPI binding
Date:   Fri,  4 Jun 2021 10:52:13 -0700
Message-Id: <20210604175213.3572644-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210512130709.3980-1-zajec5@gmail.com>
References: <20210512130709.3980-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 May 2021 15:07:09 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. Reorder interrupts
> 2. Fix typo: s/spi_lr_overhead/spi_lr_overread/
> 3. Rename node: s/spi-nor@0/flash@0/
> 
> This fixes:
> arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: spi@18029200: interrupt-names: 'oneOf' conditional failed, one must be fixed:
>         ['spi_lr_fullness_reached', 'spi_lr_session_aborted', 'spi_lr_impatient', 'spi_lr_session_done', 'spi_lr_overhead', 'mspi_done', 'mspi_halted'] is too long
>         Additional items are not allowed ('spi_lr_session_aborted', 'spi_lr_impatient', 'spi_lr_session_done', 'spi_lr_overhead', 'mspi_done', 'mspi_halted' were unexpected)
>         'mspi_done' was expected
>         'spi_l1_intr' was expected
>         'mspi_halted' was expected
>         'spi_lr_fullness_reached' was expected
>         'spi_lr_session_aborted' was expected
>         'spi_lr_impatient' was expected
>         'spi_lr_session_done' was expected
>         'spi_lr_overread' was expected
>         From schema: Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
> arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: spi-nor@0: $nodename:0: 'spi-nor@0' does not match '^flash(@.*)?$'
>         From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
