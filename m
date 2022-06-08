Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0E85429C9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 10:46:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbiFHIqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 04:46:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231898AbiFHIp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 04:45:29 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9276E22446D
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 01:04:40 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id g186so9319409pgc.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 01:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GwzJm13rpZNObfOhb6h3MTylNpTQjZops9o7G3pd5Jw=;
        b=aCZvPihkiLXivK1onEmQvXDqhOfmP3VtVcyQ8w6pJnLM4C3egfsmO8IXCUH7VmypPb
         IQrOr9FiMDTxDmN2V64kLOyKXiUVMJChWxRoKhlvDOWOKbqk1IoTv2ytIBaVqcY2LTxy
         boW7vPxES9iv23pTKyMixzeCA8K6fVpe/UoUhcbpiwLLGQoEp22RoDKx/XAxELAFxoZp
         sF8TCicttkmE/rtsYGdzF42E18Z3tEKlemQokjSNxn0ZGvQ8WYfDqK8b0Y7cuDKWfd0y
         5HFygKje2ZbtCuVlPznKKTOhj09uCWF9FySRYBMAHoTcsLncfk0G5bJgqJIDWwGnNDGU
         cPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GwzJm13rpZNObfOhb6h3MTylNpTQjZops9o7G3pd5Jw=;
        b=soxQeDzyL9Q84SbMml0GRrVJGwvsL6qdQaLuo7LINh6Du3EJcjAY4VFGnxjYBlGfOW
         dH91NgyZ3AfBMaCeuYn4pyP+ofo5DJeWFATdTzA40oCIXFN0NhALTXEpmCp0qDhEUpcc
         tM1nPFQ9W399H6E1MUvNwDhy+ypqvrNaAbYJXnUiKfoywpRsg+k65EueFvE1QyU1jTmh
         y5vzbwTgqSzXKvcTauutd4pmq7PYpIs5ulVVhVbylnde4GP5owTTwDVtXQ+wD7MlcWR2
         78yt888OSYVufPhdD15viBzGhvf5iwwFA/oK8ScHfCAhgQd+le84xMGNJxn4ZChIbkjv
         17hQ==
X-Gm-Message-State: AOAM530Vx4h1rxCF9eXGhrQomE5kDKqZZF7cTcpRpliJyOI4SIppbpL4
        yFbH5b8eNMe3tWfyoqT/7e5Dtqi/T5EDmw==
X-Google-Smtp-Source: ABdhPJzEemjvsPAK6acX5+IvMk7v/hfKM8FU+20jJvLuHYB4+jCgfrd8qEoEh4AOI0DoVAh7woT2Ug==
X-Received: by 2002:a05:6a00:1683:b0:4f7:e497:6a55 with SMTP id k3-20020a056a00168300b004f7e4976a55mr33376005pfc.21.1654675475449;
        Wed, 08 Jun 2022 01:04:35 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id iw22-20020a170903045600b0015e8d4eb2afsm14023014plb.249.2022.06.08.01.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 01:04:34 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: bcm283x: Drop unnecessary properties from dpi node
Date:   Wed,  8 Jun 2022 01:04:33 -0700
Message-Id: <20220608080433.1447724-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607155028.42029-1-stefan.wahren@i2se.com>
References: <20220607155028.42029-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  7 Jun 2022 17:50:28 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Since commit 094536003e06 ("dt-bindings: display: Convert
> VC4 bindings to schemas") it has been defined that the properties
> '#address-cells' and '#size-cells' are not necessary for the dpi
> node. This results in a warning during dtbs_check:
> 
>   dpi@7e208000: '#address-cells', '#size-cells' do not match any
>   of the regexes: 'pinctrl-[0-9]+'
> 
> Since we don't need a reg property to differentiate between
> multiple ports, drop them from the dtsi file.
> 
> Suggested-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
