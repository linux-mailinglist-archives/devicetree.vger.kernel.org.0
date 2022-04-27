Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ABC051249B
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 23:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbiD0VjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 17:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238594AbiD0VjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 17:39:14 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EEBA3A5D7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:35:59 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id z18so4253564iob.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S8aA3w8iCvlP5xuSHPj2CdcrtIpMGO+/5jUXt8Odelg=;
        b=oYrLxV0YV3rde7eAUyo1braSxFOs0xHB7P6HFT6VcVOnmqdkPtRilxbv027NKarXpw
         HCD9TvH/weOFRGsEb8boNQCcxFQ23qcJ1Rg464xY5l6ygQ8QVmbWFG8O649cGb46wjRt
         TAukZyeI1sxpITeBci+xdQb5FRiKsSbY1lJWakMFGZp0bK7ZRp5KipsQvkvrFisdaOCz
         F5jMSEYnBv3QyPh/2FKiazckyOwNXowMc32Vjptmjr2vvX78e94JYXW7zaT8jJH1xlUx
         SpbEQR6QGj822Hp33oh7+c2nNOViV/GRzilM3j1xxrg+9b+ZH0fPe1k8ic4jZ1j78ULh
         rOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S8aA3w8iCvlP5xuSHPj2CdcrtIpMGO+/5jUXt8Odelg=;
        b=QzYKvRzmHMjhG/nf5+pFYBuMaI9+SC7Bfn+dzRcMiXw+v0fBtQ8BG7g+sz61gWR1uB
         toQ+JGfZJhZsPG9IzUVCfwelugRhjen1pVq5c0g66F7h3Ot3fnLlJJp7+qdcDVtKAjfy
         DOe0tjRt2MgJfXt+a5MOIFz6dhwdY48muVAQBQLegQY+CV8VvarCVdl8OqXBiSE76zRa
         vlF1c4SzTx5RwZdPBQgyumTvUUtzmOrw5ct9AM0bhvAZDMcgZvgdygdvTIpdZB8Db8DS
         foAHBM2I6+CNxt2czUA05Cs5Hjqws2qinSpUMwkiK7CU3inr0XZlO5udnspjJJwNduTY
         vZyA==
X-Gm-Message-State: AOAM533B1nuym1mjuXPO/A+ukZxpIWfrYkVXdkQLrRbiuebk28+Md8hZ
        l6ffhK3oa5ld1EJaRjugBOo=
X-Google-Smtp-Source: ABdhPJykQeUgxF3pjE3vRwOxOMRXpRkCuj4hz+vhBi7WOeaK0VBpIC4/s4zsJO1uByLpljhwO6fipQ==
X-Received: by 2002:a05:6638:3e99:b0:32b:2a00:5b2e with SMTP id ch25-20020a0566383e9900b0032b2a005b2emr401414jab.112.1651095358836;
        Wed, 27 Apr 2022 14:35:58 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id y4-20020a92d0c4000000b002cd8a7db5f5sm7396313ila.11.2022.04.27.14.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 14:35:58 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v4 2/2] Add generic serial MIDI driver using serial bus API
Date:   Wed, 27 Apr 2022 16:35:34 -0500
Message-Id: <20220427213534.163097-1-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <0220425191602.770932-3-kaehndan@gmail.com>
References: <0220425191602.770932-3-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Just discovered a fairly severe concurrency bug with the MIDI output
in this version of the driver - write_wakeup and output_write
can end in a deadlock with the serial device. Replying here just to
ensure this isn't merged before I send a fix.

Daniel Kaehn
