Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565CA55D301
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236963AbiF0QWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 12:22:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239229AbiF0QWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 12:22:47 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E39B2660
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:22:46 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id o16so13830640wra.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ibNKnVjNmxgUnSgktQIbweNY1xYKKymggIeb+kcB2fY=;
        b=MHcQzPmlmNZp0lE+1v0+PZt3H4LfMQM7vbVNtZhTOk6ZUYxt/BwI0JHSuCsie/1Fh4
         KlS2CNGRt+/KCrW28n1Cj+Uu6ywG5QQe323Amg3S5N9ST/XQyOSPYCzwbINfWnUEMbWV
         8U98heMYvgrixWUWyKl+bOXNLfyVDGGSTZ8CIyQlDYrcmdQu9AjasbP2y9D2maNeV1G4
         gMy7lbbJjdV5uAmsAwjRgU0ULgDOLflaIm/pvpNYPE2y9Zs6P2e+Eh0YOFmOxJUYDrvl
         dB+zwhsdWnlh4p0h6V0/Cs4ikLxvK95azo1LtZKfuaKPcS0iFK1hxDhLOds488a9JQ4w
         Bs7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ibNKnVjNmxgUnSgktQIbweNY1xYKKymggIeb+kcB2fY=;
        b=2PT0Ew88SHUCUmQY3ELafsTRcFsDblb4jTzZbvXJ5P37kdO49hWpiflj+K30Y4cl3B
         o+ySF6CN6zan3/Wjw2gLe0sUxcYGpmwXHI+SR5jdyFmk2TmWKE7VOKNexgrDqDD8q0NK
         sLGortQzZaWNMba0ywPE1Vqo3AoTjKOvCo2NWN+p4M/mUJxqFJJuFbZWg6ymvSiGIjLA
         dC0sy4Avi8XkGZM7CyUrvcXfVNzDCokcGcH4H2jefrybz6nOi14TON07xdHfUS5OJFhu
         CeMuvFb6RSYeVbBj6lTmvxk4CzJRQLD5OdaBCLyJbaZyMZoifhJyi50dNqyL3xiTWBYl
         4Z+Q==
X-Gm-Message-State: AJIora+IjwXH1GSuPjw+ZLmESZQEWZJMQdCopbo4XJDzrp6lCPowSgiA
        4dkIfCyqfgxCt+TF7T7Dm7U6jA==
X-Google-Smtp-Source: AGRyM1u/BwiluIx5qtqGOnrNNfmQ/tv0xrvI/kP3h5gs549UdwglI7tdSY7Mca7U6t585ODYC6GrPw==
X-Received: by 2002:a5d:4cc4:0:b0:21b:8a19:b8a6 with SMTP id c4-20020a5d4cc4000000b0021b8a19b8a6mr13275673wrt.590.1656346964593;
        Mon, 27 Jun 2022 09:22:44 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id g1-20020adffc81000000b00213ba3384aesm11198720wrr.35.2022.06.27.09.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 09:22:44 -0700 (PDT)
Date:   Mon, 27 Jun 2022 17:22:42 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Message-ID: <YrnZUqQsKVVGHUGh@google.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220625113619.15944-7-stefan.wahren@i2se.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 Jun 2022, Stefan Wahren wrote:

> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> If available in firmware, find resources by their 'reg-names' position
> instead of relying on hardcoded offsets. Care is taken to support old
> firmware nonetheless.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  drivers/mfd/bcm2835-pm.c | 61 +++++++++++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 20 deletions(-)

Anything preventing me from applying the two MFD patches?

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
