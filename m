Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BBB35929E9
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 08:56:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241133AbiHOGz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 02:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241157AbiHOGzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 02:55:46 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 831ABEE3D
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 23:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1660546543;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=s27ZkPXAKFlLDtakqNA0q70iNz46u3nf8VUdJxUpsDw=;
        b=TgRUC6WRq1zc0FwtNFq/RCysKoczEOiTKab4LxoI02V76iEAHI9oSSBd/EIDdnPQCBo12X
        EybE0A0QvWF85f+g+EHWCxR6/tkjCfkyAcGj57CqhIZ+35gmotRV9kItR+UFoEYeqGzTA4
        VzkHJnfZlBHIeOS679E6oTcaOWSLKOY=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-205-krhjwJTpPhqWz2PvwtCkpQ-1; Mon, 15 Aug 2022 02:55:39 -0400
X-MC-Unique: krhjwJTpPhqWz2PvwtCkpQ-1
Received: by mail-pj1-f69.google.com with SMTP id o3-20020a17090a0a0300b001f3112a9f1cso2460163pjo.8
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 23:55:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=s27ZkPXAKFlLDtakqNA0q70iNz46u3nf8VUdJxUpsDw=;
        b=v5K659RXQ8akH4x4F9C57zoQnjCb3Rn5Elw0wAKQmhp9eGkQ2tnqnlkmCsrtAVmdhS
         nT0ZxDOLzR+SxNNSyBfOrYEu6rPfuKutQuLhlEF/UNx3WNHlquQeHd0+XVZJsH3Xvnfx
         4/yvwjfDWRfqv/xZpQfgozkgOwBtry8BJLDftlSIKQ8/mQ/yhM96UxCbV61r+flxoLut
         RvbchLsawFVIT+3ISMTm+XVpOd9wx6i6mis8+r3J+e2CtWtTkxnYoNSPlOTlR427NZV9
         nXTjNmwKNlKbGp2LZa0coZg2Y1KA068h1n6OorQKYSLHtbZMtzY3OD4XNvURlPZRRQnt
         Bm1w==
X-Gm-Message-State: ACgBeo20eAKzf6p/XE+ujt01JtrUpBRnCNxsLKk/CTMcCKFFi8i+YlJ2
        /zSNX0zxSsYgDKBWjeon+xyTs5Vea7N7DGvze5JaBFmbVgWZJAc8i+nbfxarUMm0yZRSKkTiCj2
        5gSIKrIVUh9pUacIl1X4eQw==
X-Received: by 2002:a17:90a:5888:b0:1f5:f1d2:54bb with SMTP id j8-20020a17090a588800b001f5f1d254bbmr25854874pji.178.1660546538523;
        Sun, 14 Aug 2022 23:55:38 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5gSneUL2Qdvf4jY+Km6lnQKEAMNgjtedDGxytTE89P2b0LLUeE3NqKVwS7DQzMiYmV23B6Fg==
X-Received: by 2002:a17:90a:5888:b0:1f5:f1d2:54bb with SMTP id j8-20020a17090a588800b001f5f1d254bbmr25854861pji.178.1660546538288;
        Sun, 14 Aug 2022 23:55:38 -0700 (PDT)
Received: from localhost ([240e:3a1:2ea:acc0:8cff:e01c:2dbf:2ae8])
        by smtp.gmail.com with ESMTPSA id l20-20020a17090b079400b001f89383d587sm4015601pjz.56.2022.08.14.23.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Aug 2022 23:55:37 -0700 (PDT)
Date:   Mon, 15 Aug 2022 14:53:25 +0800
From:   Coiby Xu <coxu@redhat.com>
To:     Stefan Berger <stefanb@linux.ibm.com>
Cc:     kexec@lists.infradead.org, devicetree@vger.kernel.org,
        linux-integrity@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, nayna@linux.ibm.com,
        nasastry@in.ibm.com, mpe@ellerman.id.au
Subject: Re: [PATCH v7 0/6] tpm: Preserve TPM measurement log across kexec
 (ppc64)
Message-ID: <20220815065325.h3t3igr6nogf7h23@Rk>
References: <20220812164305.2056641-1-stefanb@linux.ibm.com>
 <20220815064813.77g6icbkygrbmapa@Rk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220815064813.77g6icbkygrbmapa@Rk>
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 15, 2022 at 02:48:13PM +0800, Coiby Xu wrote:
>I can confirm this patch set fixes an issue that guest kdump kernel
>crashes on POWER9 host by applying it to 5.19.1 (there is a conflict
>when applying this patch set to latest kernel i.e. 6.0.0-rc1).

FYI, here's the error of applying it to 6.0.0-rc1,

[root@localhost linux]# git am ../v7_tpm_log.mbox 
Applying: of: check previous kernel's ima-kexec-buffer against memory bounds
error: patch failed: drivers/of/kexec.c:126
error: drivers/of/kexec.c: patch does not apply
Patch failed at 0001 of: check previous kernel's ima-kexec-buffer against memory bounds
hint: Use 'git am --show-current-patch=diff' to see the failed patch

-- 
Best regards,
Coiby

