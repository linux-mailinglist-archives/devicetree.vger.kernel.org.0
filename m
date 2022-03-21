Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0664E2E21
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 17:34:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348160AbiCUQfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 12:35:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243126AbiCUQfQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 12:35:16 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A92A32062
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 09:33:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E7EFCB8184C
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 16:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 971B0C340E8
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 16:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1647880427;
        bh=m3iuvU1ZPY1uF2/WWoZ/89PHfP5Z8dgFbqxVVzeAUew=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ANJTFqwxqim9RvrfYbAFZGKCL8c5zSxHQLOUUt1TfpMR861svNIO4sl121vhy2+Wz
         MOHiBF8XYEXbJWgiNEeecmVwphpZ6FeeoWaXeTwxyB6rSJBRFXLTepFNIKEOhqkJsH
         +9SL9ZqojuMaeI2VpKX0CJ/y9Wz6T/W1xAJ3ndlNHPdlkGxJjHDuqi16ASHEWvPg/G
         NjVoGe2GTsFpFY5oFlIVd8pQUnV+pHjow8i66y6iRGg3RXIrc6LDCiqo2DYyrBfXZn
         xn3eeP2mU5LNr6GCLBLgaNv5hJKPkiQw6jHlbU33fDXuPjQyiMci65GnBkD0GXRa8+
         h1CjnyVTYYSjQ==
Received: by mail-ej1-f42.google.com with SMTP id yy13so31012289ejb.2
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 09:33:47 -0700 (PDT)
X-Gm-Message-State: AOAM532uVyBdUSpB8SB9j7r27XbnXoHBLK/uP2vosrnlQL9X1TncjRqJ
        H8boWq2t8ug92Gwr08LqgSluznEDu0+yGuS6oA==
X-Google-Smtp-Source: ABdhPJyJO+ZOZeM+Dla6e8wuIsvD5IHCuGE5ojc1Bq7z58v6dgVa2H+M62pcwEK6xsSIrKtHZgzgMyChYKoZqZsFC78=
X-Received: by 2002:a17:906:58ce:b0:6da:b548:1bbb with SMTP id
 e14-20020a17090658ce00b006dab5481bbbmr21334549ejs.14.1647880425903; Mon, 21
 Mar 2022 09:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220315150912.GA24574@kili>
In-Reply-To: <20220315150912.GA24574@kili>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 21 Mar 2022 11:33:34 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLEeM3Wv_a5Ey54rgE5A6bZn85SG5WwiTWXfdH2mSVDYA@mail.gmail.com>
Message-ID: <CAL_JsqLEeM3Wv_a5Ey54rgE5A6bZn85SG5WwiTWXfdH2mSVDYA@mail.gmail.com>
Subject: Re: [bug report] of: base: Introduce of_alias_get_alias_list() to
 check alias IDs
To:     Dan Carpenter <dan.carpenter@oracle.com>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 15, 2022 at 10:09 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Hello Michal Simek,
>
> The patch b1078c355d76: "of: base: Introduce
> of_alias_get_alias_list() to check alias IDs" from Sep 20, 2018,
> leads to the following Smatch static checker warning:
>
>         drivers/of/base.c:2038 of_alias_get_alias_list()
>         warn: passing negative bit value 's32min-(-2),0-s32max' to 'set_bit()'

The 1 user of of_alias_get_alias_list() has since been refactored and
doesn't use of_alias_get_alias_list() anymore. So I'm just going to
revert b1078c355d76.

Rob
