Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15445129EF
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 05:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238565AbiD1DZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 23:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235825AbiD1DZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 23:25:55 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5874814B9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 20:22:41 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id g28so6733753ybj.10
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 20:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g5T8P+kiwzKbHbXXuLnNjVtw9eTjQ8tWYWXfsKxWX2Y=;
        b=j3gCeQqNxowTu8OnwF4Ebbbrtla6hLPGYF0RnmUD8stsAvP+OSQ0v9ChwY2L96CgDl
         gKBCk0MvClFyHE1tlicoLvpuR9oMCgVJrTCmxKpf3XwnluLIl2Kiq2rF6AxE08x1ITlW
         pkwOZuuWLmJ5Xlg8uFwvTsBacO49iT/8YMJ1zQiPDi4NZWPJL3DJIy853Tr4H29J1AFE
         y1GttrAeA70YrLJt705JSrc1YYdlqoT1a8JxPzzg0EQAIHrwi5arWR6qlDdlE/q14JC6
         40hGplO/RAflA9VBHQwbXHWFvSWH8UFWHix94ikd8F0FZgenbLajiFBXFHLueTDlfKhi
         v/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g5T8P+kiwzKbHbXXuLnNjVtw9eTjQ8tWYWXfsKxWX2Y=;
        b=ScrpAhjtjxZGu1N7uwXw2YmgExjinAgmA2AWlHCYmvS1eT3dlyVVx5fTCTAHFNKotq
         RZpm9TKXkQjDRHqLseYGF3NjKng5M4sFoFjs2AIi47tIQz9pDnmnSLjhwnk6/ajZskOd
         rin5uZMAvayDCl8y3qeAHaRSQKJT9oguqEs4e6R6U/N4VrRGgpkUAQXyGOBHAfUr/UjE
         de8foNkP9Hg0WeywvTOKisfJmcvXdIZ/fZoIgMYqrDmzARIZs8fkszwn2Y/gc5o8/cZJ
         tISaMA0duYzo38f8f0j933BY/AdXWGqrHE9xJ7XPSUd0qUGrGTmQMXGsvbFFqKVl/ak9
         aLzg==
X-Gm-Message-State: AOAM531ar34Vp8IHC4Ns7bhlfFNTB7gD8uSGEuXyI2FZ1Vd2uslHxMxV
        DUsEteVNGivml1JPstjTt+fsvBvt3uUr4A9+ZWk=
X-Google-Smtp-Source: ABdhPJzlDGClHD4rOxv1BpiTno3SWMO3x3MwxIFZMTEzXU51rj09f/EINql6e4FTKoRziSMXxeY3nnTDsY3DTtd/7uc=
X-Received: by 2002:a25:bb43:0:b0:645:43cf:736c with SMTP id
 b3-20020a25bb43000000b0064543cf736cmr28644188ybk.493.1651116161128; Wed, 27
 Apr 2022 20:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220425191602.770932-1-kaehndan@gmail.com> <20220425191602.770932-2-kaehndan@gmail.com>
 <YmcdvcyeJJBB1pqW@robh.at.kernel.org> <CAP+ZCCfT8Mm1OECsrKxzq5vtjyaTiF=ML9LJYkHXO0A6Wao32w@mail.gmail.com>
 <YmiSvXCE5Yovvjhd@robh.at.kernel.org> <CAP+ZCCc0YBSMU1XXoTVxNRaQ6V76D2=zNJzoduLnG2pn16hHjQ@mail.gmail.com>
 <Ymn00nbRkkfoUh/Y@robh.at.kernel.org>
In-Reply-To: <Ymn00nbRkkfoUh/Y@robh.at.kernel.org>
From:   Dan K <kaehndan@gmail.com>
Date:   Wed, 27 Apr 2022 22:22:30 -0500
Message-ID: <CAP+ZCCfhRn0dQpM8ve0PmMg_fmvQJBwSSeS=cnM2ak9OY8CAKA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Will do, thanks.

Daniel Kaehn
