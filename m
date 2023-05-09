Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAB726FC413
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 12:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235208AbjEIKjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 06:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235199AbjEIKjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 06:39:13 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF020173E
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 03:39:11 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-3f36523e104so31097991cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 03:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683628751; x=1686220751;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opeeHjTpE8hf7IkSOrjrz4V6UTxg/7z0lzjIXtvA3kY=;
        b=Ha8yslMinv6gOBVO/lcrLrH1IuvYZ1gnn7kieHBrb/XDG8/1s9ZK8Hhkv6ZeUzfCYf
         XKu0EM/s+UaNnsCV0YaViDMqZzlFfvPCda0/aG9iAgCx0ielbFEouClO1aMjz660/Os+
         5EgebudrxsBLvIWELN46weK478AkeqXJe8AXw/Aa/hikpMJ+W0RJz7884wcYHC9OkU3g
         2LXgaelQOtVs7zEOXFlBZLHyzyUrel51QrVJzdVFAV2O5SAr0ooKPR4S9q54qSs7yI5D
         1OPjIm7xi5z9oLSxRuhymL3szShLsFGu1J3wenAMafod6GZRL+j3+HUYn8WIe9Xxyiz+
         C1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683628751; x=1686220751;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=opeeHjTpE8hf7IkSOrjrz4V6UTxg/7z0lzjIXtvA3kY=;
        b=l4laMycNSmWtXlMZ9wP96Cjh2rml2tPjtsolFkMXUjpBdQJ77+/ifpvzBRHO/9+0KT
         fUEz0EIa7AkTqbD+E2Uspety1LQfYiNIeGuxp441BDJkiQ4wp9yo3pk28N9GVjk6RXAu
         vPyAETRFG5dtQ7jFFXfw/ICAEtswJd/Rmb5GN7kFky+In49Y3VkkvN+eOXG7V+FZyZaX
         iLDZY4220a9gTvX67uZWm/2xhtgl+u5iI9YWzBL+oauicWsXlyIrGzftb0v6r2D5bbEe
         BjPajInxdUHZ8ICfgDbNvq9TfdrzkDAzGyBGuMMck3ACYy7swUtxsFtpTsYi8MN4STrQ
         Chhw==
X-Gm-Message-State: AC+VfDzjmCW7ErW2eLJw7uImxPc63tNCvbokg411hgP3uo2DIkH0bwiF
        xKCOriek0bQS5akxPqhLewHfmt29p02oK43MdAzSU0Rs7O4=
X-Google-Smtp-Source: ACHHUZ4tpxlxZU6i9SZ0ZVGoAJzHgYT/rTbM5b7ODuBKEL35zYNTQBhDE4SAoB8aLWYVnCmn3A2qbw59/TswLmk2K8k=
X-Received: by 2002:a05:622a:286:b0:3f3:8ddc:d760 with SMTP id
 z6-20020a05622a028600b003f38ddcd760mr9859421qtw.12.1683628750848; Tue, 09 May
 2023 03:39:10 -0700 (PDT)
MIME-Version: 1.0
Sender: didiekodjo@gmail.com
Received: by 2002:a05:622a:150:b0:3f2:8f3:5f76 with HTTP; Tue, 9 May 2023
 03:39:10 -0700 (PDT)
From:   Kayla Manthey <sgtkylamanthey73@gmail.com>
Date:   Tue, 9 May 2023 10:39:10 +0000
X-Google-Sender-Auth: Tw0XzwO6MP-YGbBgFI-kL7zGDpc
Message-ID: <CAB56QimTUkPER-4fN=1j2114zzvo2DvfoBCPSdQg8DN71NZE1A@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello, please did you receive my previous email?, thank you.
