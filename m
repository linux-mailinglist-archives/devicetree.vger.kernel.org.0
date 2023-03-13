Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 536256B75C2
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 12:18:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbjCMLSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 07:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbjCMLSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 07:18:15 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 613CB49D3
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 04:17:58 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id u16so25808vso.1
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 04:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678706278;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N3tQa/xAjjFjMbYTIPvabJVdNLC/DkLFMMTZCH3qWNU=;
        b=ad6YuduEAji9TbSYmDX/5YTrY3hy/hE/ZRprgDFUAZOmxyueWR4ex32VX/WxTQC1bL
         Vzsam3FfCHR5C5v3861ZvdTOsMtZUni6H5byceWGitQeq2fkc42XqYHt/Wr/hM8U7z6l
         B5eHpUWiuTnPeWsSUcvuD7Spn+PzuDXkfUry6zM5nB0jbcZd4yljEEIVtTMNRuINcQDw
         Tzp09smXP7aiogQc5UqvBDqvLvdXY8rKyuvSIcRiU99uuy+43Czuy4Tg7NjH1illgCQP
         pttNOs9Vokve2NNMEXN8ZP1ZWExg8TFXhkV8MuGgGAxcfPNs9pU0Dwe506abcAJGZxFm
         lCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678706278;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3tQa/xAjjFjMbYTIPvabJVdNLC/DkLFMMTZCH3qWNU=;
        b=VLrIzxG5mUktX9KTBpStgBmFrG1+rEX3dx9cK8nUNwjvXnhDbd44u3cOVWTZBXDtJu
         uV30Vg4qqe21p4L7GBW+BQYRjhUCQndyeDVGRSCnmUTYVxDuvtU9A9thK6cDuz5xsk9S
         gYmE9N5upLxhsnFp3WP9b/5UtzxHdQODpJI8yu7KDxtB8fKIDZpKb+6wpWZLedhpbZ5Q
         U+AjZiRxUNUDx7sw68dYBij2rX6qovsruDskJ+hU4F8bkiWnCkxnlgPgjXRDldCdlaJe
         dXyMffdABPTjawyzEdJxeM56yDXpLYq+vL4nflffLtTynMrD2macOINVBsV/c9f8VWnh
         eGKA==
X-Gm-Message-State: AO0yUKWNFc+nch3JpQu7CqgFdyZ/mFhH2WugQ4kD6BUfn5HVTFXDI7L8
        +QIrqyaYSzBZOjGwSsAedlx9fJ+aPMtUxS8LXZU=
X-Google-Smtp-Source: AK7set9aLA6NXwCFjiUmD0O5PLxlXy5QmULZQqD45djYlFBJufdggQWT2j3hJgF/NciH9e5QR19BFwVERrUZZcibmJM=
X-Received: by 2002:a05:6102:11e4:b0:402:9b84:1be2 with SMTP id
 e4-20020a05610211e400b004029b841be2mr21873776vsg.4.1678706277773; Mon, 13 Mar
 2023 04:17:57 -0700 (PDT)
MIME-Version: 1.0
Sender: 2fatimaahmed@gmail.com
Received: by 2002:a59:cd0f:0:b0:3a6:925f:39d5 with HTTP; Mon, 13 Mar 2023
 04:17:56 -0700 (PDT)
From:   Elena Tudorie <elenatudorie987@gmail.com>
Date:   Mon, 13 Mar 2023 16:47:56 +0530
X-Google-Sender-Auth: 5BnVfFz9GoiKpNbBumMNKUeUzpc
Message-ID: <CAH=VxSNmakoKGdVDuMBCSBWT5hZajG4aZCDV8eS16y-poxhzKg@mail.gmail.com>
Subject: Greetings
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am Ms Elena Tudorie, I have a important  business  to discuss with you,
Thanks for your time and  Attention.
Regards.
Mrs.Elena Tudorie
